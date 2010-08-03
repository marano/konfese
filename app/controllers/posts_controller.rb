class PostsController < ApplicationController

  def create
    redirect_to root_path if Post.create params[:post]
  end

end

