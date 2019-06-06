class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :load_data

  include StaticPagesHelper

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def load_data
    @categories = Category.limit(3)
    @hot_post = Post.order_views_posts.limit(10)
    @hashtags = Hashtag.all
  end
end
