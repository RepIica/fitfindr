class TagsController < ApplicationController
  def index

  end

  def show
    @posts = Posts.all
    @tag = Tag.find(params[:id])
    @posts_with_tag = @posts.select {|post| post.tag.include?(@tag)}
    # pass in info to show page and use post partial somehow
  end


end
