class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    @post = Post.new

    #byebug
  end

  def create
    @post = Post.new(post_params)
    #byebug
    if @post.save
      redirect_to posts_path
    else
      render :new
    end

    # post = Post.create(params[:post])
    # uploader = ImageUploader.new
    # uploader.store!(params[:image])

    #redirect_to post_path(post)
  end

  def show
    @post = Post.find(params[:id])
    # @image = uploader.retrieve_from_store!()
  end

  private

  def post_params
    params.require(:post).permit(:image, :tag_ids, tags_attributes: [:tag_type, :name])
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
