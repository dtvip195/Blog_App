class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :load_data

  include StaticPagesHelper

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def load_data
    @categories = Category.all
    @hot_post = Post.order_views_posts.limit(10)
    @hashtags = Hashtag.all
    @topics = Topic.order(created_at: :desc)
    @posts = Post.order(created_at: :desc)
  end
end
