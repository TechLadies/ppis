class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:volunteer).permit(
    :name, :gender, :"date_of_birth(3i)", :"date_of_birth(2i)", :"date_of_birth(1i)",
    :mobile, :profession, :other_talents, :about_me, :email, :password, :password_confirmation, :formal_education_id,
    :marital_status, :address, :home_phone_number, :language_spoken, :past_experience, :nric_no, :adhoc,
    :email_notification, target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [],
    certification_ids: []
    )
  end

end
