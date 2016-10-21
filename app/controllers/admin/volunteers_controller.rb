class Admin::VolunteersController < Admin::BaseController
  
  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(params[:volunteer])

    if @volunteer.save
        redirect_to @volunteer
    else
      render 'new'
    end
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end
end