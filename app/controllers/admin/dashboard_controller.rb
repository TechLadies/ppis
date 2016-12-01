class Admin::DashboardController < Admin::BaseController

  def index
    @volunteers = Volunteer.group(:adhoc).count

    @volunteers_past3yrs_include_current = Volunteer.where('created_at > ?',
      (Date.today - 2.years).beginning_of_year).count

    @volunteers_past3yrs_exclude_current = Volunteer.where(created_at:
      (Date.today - 2.years).beginning_of_year..(Date.today - 1.year).end_of_year).count

    @volunteers_past3yrs_oldest_only = Volunteer.where(created_at:
      (Date.today - 2.years).beginning_of_year..(Date.today - 2.years).end_of_year).count
  end
end
