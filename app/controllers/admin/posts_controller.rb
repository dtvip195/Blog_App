class Admin::PostsController < Admin::AdminBaseController
  before_action :load_post, only: %i(edit update destroy)
  # before_action :load_categories, only: %i(index create update)

  def index; end

  def new; end

  def create
    @post = current_user.posts.build post_params
    if @post.save
      flash[:success] = "Success"
    else
      flash[:danger] = "Fail"
    end
    redirect_to admin_posts_path
  end

  def destroy
    if @post.destroy
      respond_to do |format|
        format.js{flash.now[:success] = "Success"}
      end
    else
      respond_to do |format|
        format.js{flash.now[:danger] = "Fail"}
      end
    end
  end

  def edit; end

  def update
    if @post.update_attributes post_params
      flash[:success] = "Success"
    else
      flash[:danger] = "Fail"
    end
    redirect_to admin_posts_path
  end

  def post_params
    params.require(:post).permit :title, :content, :image, :topic_id, :user_id
  end

  def load_post
    @post = Post.find_by id: params[:id]
    return if @post
    fash[:danger] = "No Data"
    redirect_to admin_posts_path
  end
end
