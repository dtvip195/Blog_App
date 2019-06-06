class Admin::CategoriesController < Admin::AdminBaseController
  before_action :load_category, only: %i(destroy edit update)

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new category_params
    if @category.save
      respond_to do |format|
        format.js { flash.now[:success] = "Success" }
      end
    else
      respond_to do |format|
        format.js { flash.now[:danger] = "Fail" }
      end
    end
  end

  def destroy
    if @category.destroy
      respond_to do |format|
        format.js { flash.now[:success] = "Success" }
      end
    else
      respond_to do |format|
        format.js { flash.now[:danger] = "Fail" }
      end
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @category.update_attributes category_params
      respond_to do |format|
        format.js { flash.now[:success] = "Success" }
      end
    else
      respond_to do |format|
        format.js { flash.now[:danger] = "Fail" }
      end
    end
  end

  private

  def category_params
    params.require(:category).permit :name
  end

  def load_category
    @category = Category.find_by id: params[:id]
    return if @category
    fash[:danger] = "No Data"
    redirect_to admin_categories_path
  end
end
