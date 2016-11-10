class Admin::VolunteersController < Admin::BaseController


  def index
    #if params[:skill_ids]
      #@volunteers = Volunteer.where(:skill_ids => params [:skill_ids])
    #else
      @volunteers = Volunteer.all.order('LOWER(name)')
    #end
    #@volunteers = Volunteer.all.select(volunteer.skills).joins(:skills).where(volunteer.skills)
    #@volunteers = Volunteer.joins(:skills)
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
      :password_confirmation, target_group_ids: [], availability_ids: [], skill_ids: [], center_ids: [],
      formal_education_ids: [])
  end
end
