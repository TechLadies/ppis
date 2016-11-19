class Admin::VolunteersController < Admin::BaseController

  def index
    if params[:search]
      @volunteers = Volunteer.search(params[:search])
    elsif params[:filter]
      @volunteers = Volunteer.filter(params[:filter])
    else
      @volunteers = Volunteer.joins(:preferred_centers)
                      .where(['preferred_centers.center_id = ?', current_admin.center_id])
                      .order('LOWER(name)')
    end
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to admin_volunteers_path
    else
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
    params.require(:volunteer).permit(:name, :gender, :"date_of_birth(3i)", :"date_of_birth(2i)", :"date_of_birth(1i)",
      :mobile, :profession, :other_talents, :about_me, :adhoc, :email_notification, :email, :password,
      :formal_education_id,
      :password_confirmation, target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [])
  end
end
