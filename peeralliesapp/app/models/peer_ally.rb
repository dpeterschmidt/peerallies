class PeerAlly < ActiveRecord::Base
  attr_accessible :name, :grade, :bio, :avatar, :ups_id, :email, :last_name, :first_name, :member_of #ups data fields

  attr_protected :uid, :provider #for omniauth authentication

  # validates :name, :bio, :grade, :presence => true #:message => "Please fill out all fields"

  has_attached_file :avatar, :styles => {:thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    # is a faculty member?
  def faculty?
  	member_of.downcase.include? "faculty"
  end

  # is a student?
  def student?
  	member_of.downcase.include? "student"
  end

  # creates a new user from the given omniauth authorization
  def self.create_with_omniauth(auth)
    user = PeerAlly.new(
    	:ups_id => auth["info"]["name"],
  		:email => auth["info"]["email"],
  		:last_name => auth["info"]["last_name"],
  		:first_name => auth["info"]["first_name"],
  		:member_of => auth["info"]["memberOf"]
  	)
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.save!
    return user
  end
end
