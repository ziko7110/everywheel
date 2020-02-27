class PostController < ApplicationController
  def index
    post = Post.last

    @title_drop = Post.get_title(post.drop_url)
    @event_name = Post.get_event_name(post.drop_url)
    @title_beyond = Post.get_title(post.beyond_url)
    @event_name_beyond = Post.get_event_name(post.beyond_url)
    @title_varon = Post.get_title(post.varon_url)
    @event_name_varon = Post.get_event_name(post.drop_url)
    @opst_drop = Post.get_opst(post.drop_url)
    @opst_beyond = Post.get_opst(post.beyond_url)
    @opst_varon = Post.get_opst(post.varon_url)
    @price_drop = Post.get_price(post.drop_url)
    @price_beyond = Post.get_price(post.beyond_url)
    @price_varon = Post.get_price(post.varon_url)
    @image_drop = Post.get_image(post.drop_url)
    @image_beyond = Post.get_image(post.beyond_url)
    @image_varon = Post.get_image(post.varon_url)
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
