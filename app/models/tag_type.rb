class TagType < ApplicationRecord
  has_many :tags
  has_many :posts
end
