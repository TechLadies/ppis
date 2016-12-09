class Admin::VolunteersController < Admin::BaseController

  def index
    @query = VolunteerQuery.new(current_admin, params)
    @volunteers = @query.volunteers
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to admin_volunteers_path
    else
      flash[:error] = @volunteer.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def edit
    @volunteer = find_volunteer
  end

  def update
    @volunteer = find_volunteer

    if @volunteer.update_attributes(volunteer_params)
      redirect_to admin_volunteers_path
    else
      flash[:error] = @volunteer.errors.full_messages.to_sentence
      render 'edit'
    end
  end

  def show
    @volunteer = find_volunteer
  end

  private

  def find_volunteer
    Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(
      :name, :gender, :"date_of_birth(3i)", :"date_of_birth(2i)", :"date_of_birth(1i)",
      :mobile, :profession, :other_talents, :about_me, :email, :password, :password_confirmation, :formal_education_id,
      :marital_status, :address, :home_phone_number, :language_spoken, :past_experience, :NRIC_No,
      target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [], certification_ids: [],
      email_notification: [true, false], adhoc: [true, false]
      )
  end
end
