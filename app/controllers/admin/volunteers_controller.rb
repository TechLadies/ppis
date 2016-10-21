class Admin::VolunteersController < Admin::BaseController
  
  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(params[:id])

    if @volunteer.save
        redirect_to admin_volunteer_path
    else
      render :action =>'new'
    end
  end

  def Volunteer_params
    params.require(:volunteer).permit(:name, :gender, :"date_of_birth(3i)", :"date_of_birth(2i)", :"date_of_birth(1i)",
      :mobile, :profession, :other_talents, :about_me, :email, :password, :password_confirmation,
      target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [], formal_education_ids: [])
  end

end