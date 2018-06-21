class Tag < ApplicationRecord
  has_many :posts_tag
  has_many :posts, through: :posts_tag

  def do_nothing
    "nothing"
  end

end
