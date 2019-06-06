class Admin::UsersController < Admin::AdminBaseController
  def index; end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = "No Data"
    redirect_to admin_root_path
  end
end
