class My::ProfilesController < My::BaseController

  def edit
    @profile = current_volunteer
  end


  def update
    @profile = current_volunteer
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

private 

  def profile_params
    params.require(:profile).permit(:name, :mobile, :profession, :other_talents, :about_me, :email, :password, 
      :password_confirmation, target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [], 
      formal_education_ids: [], certification_ids: [])
  end
end