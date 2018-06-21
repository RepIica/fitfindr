class Post < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :comments
  has_many :posts_tag
  has_many :tags, through: :posts_tag

  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :posts_tag
  #belongs_to :user

  # def tags_attributes=(tag_attributes) #associates tag only if it doesn't already exist for the post
  #   tag_attributes.values.each do |tag_attribute|
  #     tag = Tag.find_or_create_by(tag_attribute)
  #     self.tags << tag
  #   end
  # end


end
