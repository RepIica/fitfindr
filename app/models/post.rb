class Post < ApplicationRecord


  mount_uploader :image, ImageUploader

  has_many :comments
  has_many :tags
  belongs_to :user
end
