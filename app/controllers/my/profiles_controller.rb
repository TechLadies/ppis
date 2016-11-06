class My::ProfilesController < My::BaseController

  before_action :skip_password_attribute, only: :update

  def edit
    @profile = current_volunteer
  end

  def update
    @profile = current_volunteer
    if @profile.update_with_password(profile_params)
      sign_in(@profile, bypass: true)
      redirect_to my_root_path, notice: 'Your profile has been updated'
    else
      flash[:error] = @profile.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(
      :name, :mobile, :profession, :other_talents, :about_me, :email, :password, :password_confirmation,
      :current_password,
      target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [], formal_education_ids: [],
      certification_ids: []
    )
  end

  private

  def skip_password_attribute
    if params[:profile][:password].blank? && params[:profile][:password_confirmation].blank?
      params[:profile].delete(:password)
      params[:profile].delete(:password_confirmation)
    end
  end
end
