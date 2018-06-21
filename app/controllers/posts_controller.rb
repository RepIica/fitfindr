class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    @post = Post.new
    @tagcolors = Tag.all.select {|tag| tag.tag_type == 'Color'}
    @tagclothing = Tag.all.select {|tag| tag.tag_type != 'Color'}
  end

  def create
    @post = Post.new(post_params)
    # byebug
    if @post.save
      redirect_to posts_path
      # flash[:success] = "Book added"
    else
      render :new
      flash.now[:danger] = "Book NOT added"
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
    params.require(:post).permit(
      :image, tag_ids:[]
      # ,tags_attributes: [:name],
      # posts_tag_attributes: [:tag_id, :post_id]
    )
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
