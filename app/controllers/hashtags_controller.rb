class HashtagsController < ApplicationController
  before_action :load_hashtag, only: :show

  def show
    @post_hashtag = PostsHashtag.where(hashtag_id: @hashtag.id)
    @posts_hashtags = Post.where_hashtag_id(@post_hashtag.pluck(:post_id))
                          .order_views_posts
  end

  private

  def load_hashtag
    @hashtag = Hashtag.find_by id: params[:id]
    return if @hashtag
    flash[:danger] = "No Data"
    redirect_to root_path
  end
end
