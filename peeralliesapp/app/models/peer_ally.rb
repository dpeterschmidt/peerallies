class PeerAlly < ActiveRecord::Base
  attr_accessible :name, :grade, :bio, :avatar

  validates :name, :bio, :grade, :presence => true #:message => "Please fill out all fields"

  has_attached_file :avatar, :styles => {:thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
