class Admin::DashboardController < Admin::BaseController

  def index
    @presenter = Admin::DashboardPresenter.new
  end
end
