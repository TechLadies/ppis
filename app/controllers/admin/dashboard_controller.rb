class Admin::DashboardController < Admin::BaseController

  def index
    @volunteers = Volunteer.group(:adhoc).count
  end

end
