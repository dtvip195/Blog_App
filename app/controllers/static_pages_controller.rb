class StaticPagesController < ApplicationController
  def home
    @new_post = Post.order_new_posts.limit(5)
    @hot_post = Post.order_views_posts.limit(5)
    @categories = Category.limit(3)
    # @new_post_category = Post.@categories.topics.pluck(:id).order_new_posts.limit(3)
  end
end
