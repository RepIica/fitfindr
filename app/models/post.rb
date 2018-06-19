class Post < ApplicationRecord
  has_many :comments
  has_many :tags
  belongs_to :user

  mount_uploader :image, ImageUploader

end
