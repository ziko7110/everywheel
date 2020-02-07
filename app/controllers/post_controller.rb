class PostController < ApplicationController
  def index
    # @texts=@texts
    @title = Post.get_title
  end
end
