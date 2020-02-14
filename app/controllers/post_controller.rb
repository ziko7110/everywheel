class PostController < ApplicationController
  def index
    @title_drop = Post.get_title_drop
    @event_name = Post.get_event_name_drop
    @title_beyond = Post.get_title_beyond
    @event_name_beyond = Post.get_event_name_beyond
    @title_varon = Post.get_title_varon
    @event_name_varon = Post.get_event_name_varon
  end
end
