class User < ActiveRecord::Base
  has_many :microposts

  validates :name, :email, presence: true

  mount_uploader :avatar, AvatarUploader
end
