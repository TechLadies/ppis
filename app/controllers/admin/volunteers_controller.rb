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
      :email, :password, :password_confirmation, :current_password,
      :name, :gender, :"date_of_birth(3i)", :"date_of_birth(2i)", :"date_of_birth(1i)", :mobile, :about_me,
      :profession, :highest_education, :other_talents, :email_notification, :formal_education_id, :adhoc,
      certification_ids: [], skill_ids: [], center_ids: [], target_group_ids: [], availability_ids: []
    )
  end
end
