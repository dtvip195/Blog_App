class StaticPagesController < ApplicationController
  def home
    @new_post = Post.order_new_posts
                    .paginate(page: params[:page],
                      per_page: Settings.post.per_page)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def search; end
end
