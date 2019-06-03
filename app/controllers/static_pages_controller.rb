class StaticPagesController < ApplicationController
  def home
    @new_post = Post.order_new_posts.paginate(page: params[:page], per_page: 2)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def search; end
end
