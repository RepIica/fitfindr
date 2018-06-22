class TagsController < ApplicationController
  def index
  end

  def show
    @posts = Post.all
    @tag = Tag.find(params[:id])
    @posts_with_tag = @posts.select {|post| post.tags.include?(@tag)}
    #byebug
    # pass in info to show page and use post partial somehow
  end


end
