class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.create(params[:post])

    uploader = ImageUploader.new
    uploader.store!(params[:image])
    #redirect_to post_path(post)
  end

  def show
    @post = Post.find(params[:id])
    @image = uploader.retrieve_from_store!()
  end
end
