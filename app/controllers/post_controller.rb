class PostController < ApplicationController
  def index
    @title_drop = Post.get_title_drop
    @title_beyond = Post.get_title_beyond
    @title_varon = Post.get_title_varon
  end
end
