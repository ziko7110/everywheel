class PostController < ApplicationController
  def index
    @title_drop = Post.get_title_drop
    @event_name = Post.get_event_name_drop
    @title_beyond = Post.get_title_beyond
    @event_name_beyond = Post.get_event_name_beyond
    @title_varon = Post.get_title_varon
    @event_name_varon = Post.get_event_name_varon
    @opst_drop = Post.get_title_drop_opst
    @opst_beyond = Post.get_title_beyond_opst
    @opst_varon = Post.get_title_varon_opst
    @price_drop = Post.get_drop_price
    @price_beyond = Post.get_beyond_price
    @price_varon = Post.get_varon_price
    @image_drop = Post.get_drop_image
    @image_beyond = Post.get_beyond_image
    @image_varon = Post.get_varon_image
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
      redirect_to   root_path
  end

  private
  def post_params
    params.permit(:drop_url, :beyond_url, :varon_url)
  end
 
end
