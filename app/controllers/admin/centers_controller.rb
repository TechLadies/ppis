class Admin::CentersController < Admin::BaseController

  before_action :require_admin_role!, only: [:new, :create, :edit, :update]

  def index
    @centers = Center.all
  end

  def show
    @center = find_center
  end

  def new
    @center = Center.new
  end

  def create
    @center = Center.new(center_params)
    if @center.save
      redirect_to [:admin, @center]
    else
      render 'new'
    end
  end

  def edit
    @center = find_center
  end

  def update
    @center = find_center
    if @center.update(center_params)
      redirect_to [:admin, @center]
    else
      render 'edit'
    end
  end

  private

  def find_center
    Center.find(params[:id])
  end

  def center_params
    params.require(:center).permit(:name, :manager_name, :email, :contact_number, :fax_number, :address)
  end

  def require_admin_role!
    redirect_to admin_centers_path unless current_admin.has_role?(:admin)
  end

end
