class PostsController < ApplicationController
  before_action :load_post_details, only: :show

  def show
    @post_details.update_attributes(views: @post_details.views += 1)
  end

  private

  def load_post_details
    @post_details = Post.find_by id: params[:id]
    return if @post_details
    flash[:danger] = "No Data"
    redirect_to root_path
  end
end
