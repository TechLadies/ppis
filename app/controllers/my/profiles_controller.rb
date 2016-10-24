class My::ProfilesController < My::BaseController
 before_action :authenticate_volunteer!

  def index
  end

  def show
  end

  def edit
    @profile = current_volunteer
  end


  def update
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

end