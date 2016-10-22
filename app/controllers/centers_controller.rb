class CentersController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def index
    @centers = Center.all
  end

  def show
    @center = Center.find(params[:id])
  end

  def new
    @center = Center.new
  end

  def create
    @center = Center.new(center_params)
    if @center.save
      redirect_to @center

    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @center.update(center_params)
      redirect_to @center
    else
      render 'edit'
    end
  end

  private

  def find_center
    @center = Center.find(params[:id])
  end

  def center_params
    params.require(:center).permit(:name, :manager_name, :email, :contact_number, :fax_number, :address)
  end

end
