class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :load_data

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def load_data
    @categories = Category.limit(3)
    @hot_post = Post.order_views_posts.limit(10)
  end
end
