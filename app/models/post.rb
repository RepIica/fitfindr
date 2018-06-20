class Post < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags

  accepts_nested_attributes_for :tags
  #belongs_to :user
end
