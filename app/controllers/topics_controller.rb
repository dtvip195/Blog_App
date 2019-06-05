class TopicsController < ApplicationController
  before_action :load_topic, only: :show

  def show
    @posts_topic = Post.where_topic_id(@topic.id)
                       .order_new_posts
                       .paginate(page: params[:page],
                        per_page: Settings.post.per_page)
  end

  private

  def load_topic
    @topic = Topic.find_by id: params[:id]
    return if @topic
    flash[:danger] = "No Data"
    redirect_to root_path
  end
end
