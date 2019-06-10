class Admin::TopicsController < Admin::AdminBaseController
  before_action :load_topic, only: %i(edit update destroy)
  before_action :load_categories, only: %i(index create update)

  def index
    @topics = Topic.order(created_at: :desc)
  end

  def create
    @topic = Topic.new topic_params
    if @topic.save
      respond_to do |format|
        format.js{flash.now[:success] = "Success"}
      end
    else
      respond_to do |format|
        format.js{flash.now[:danger] = "Fail"}
      end
    end
  end

  def destroy
    if @topic.destroy
      respond_to do |format|
        format.js{flash.now[:success] = "Success"}
      end
    else
      respond_to do |format|
        format.js{flash.now[:danger] = "Fail"}
      end
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @topic.update_attributes topic_params
      respond_to do |format|
        format.js{flash.now[:success] = "Success"}
      end
    else
      respond_to do |format|
        format.js{flash.now[:danger] = "Fail"}
      end
    end
  end

  def topic_params
    params.require(:topic).permit :name, :category_id
  end

  def load_topic
    @topic = Topic.find_by id: params[:id]
    return if @topic
    fash[:danger] = "No Data"
    redirect_to admin_topics_path
  end

  def load_categories
    @categories = Category.all.map{|c| [c.name, c.id]}
  end
end
