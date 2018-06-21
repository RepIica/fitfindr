require 'bcrypt'
class ApplicationController < ActionController::Base

  def index
    @posts = if params[:q]
      Post.all.select do |post|
        tag_names = post.tag_names
        tag_names.include?(params[:q].capitalize) #all names are capitalized, needs refactor to be case compatable
      end
      # Post.where('post.tags.name LIKE ?', "%#{params[:q]}%")
    else
      Post.order('id DESC')
    end
  end

  private
  def post_params
    params.require(:post).permit(:q)
  end


end
