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
    params.require(:volunteer).permit(
      :name, :gender, :"date_of_birth(3i)", :"date_of_birth(2i)", :"date_of_birth(1i)",
      :mobile, :profession, :other_talents, :about_me, :email, :password, :password_confirmation, :formal_education_id,
      :marital_status, :address, :home_phone_number, :language_spoken, :past_experience, :nric_no, :adhoc, 
      :email_notification, target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [], 
      certification_ids: [],
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
