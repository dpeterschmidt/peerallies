class PeerAlly < ActiveRecord::Base
  attr_accessible :name, :grade, :bio, :avatar, :display, :ups_id, :email, :last_name, :first_name, :member_of, :administrator #ups data fields

  attr_protected :uid, :provider #for omniauth authentication

  validates :name, :ups_id, :presence => true, :uniqueness => true #must have name to display an ally and ups_id for login verification

  has_attached_file :avatar, :styles => {:thumb => "100x100>" }, :default_url => "/images/:style/missing.png" #directory of default image

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/ #avatar photos for each ally must by an image

  before_save :downcase_fields

  #make sure ups_id is lowercase for login validation
  def downcase_fields
    self.ups_id.downcase
  end

    # is a faculty member?
  def faculty?
  	member_of.downcase.include? "faculty"
  end

  # is a student?
  def student?
  	member_of.downcase.include? "student"
  end

  #Changes routing so the name of the ally is included when on their profile page
  def to_param
  "#{id}-#{name}"
end

  # creates a new user from the given omniauth authorization
  # def self.create_with_omniauth(auth)
  #   user = PeerAlly.new(
  #   	:ups_id => auth["info"]["name"],
  # 		:email => auth["info"]["email"],
  # 		:last_name => auth["info"]["last_name"],
  # 		:first_name => auth["info"]["first_name"],
  # 		:member_of => auth["info"]["memberOf"]
  # 	)
  #   user.provider = auth["provider"]
  #   user.uid = auth["uid"]
  #   user.save!
  #   return user
  # end
end
