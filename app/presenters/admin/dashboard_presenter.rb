class Admin::DashboardPresenter

  attr_reader :volunteers, :volunteers_past3yrs_include_current, :volunteers_past3yrs_exclude_current,
              :volunteers_past3yrs_oldest_only

  def initialize
    @volunteers = all_volunteers.group(:adhoc).count

    @volunteers_past3yrs_include_current = all_volunteers.where('created_at > ?', (Date.today - 2.years).beginning_of_year)

    @volunteers_past3yrs_exclude_current = @volunteers_past3yrs_include_current.where('created_at < ?',
     (Date.today - 1.year).end_of_year)

    @volunteers_past3yrs_oldest_only = @volunteers_past3yrs_include_current.where('created_at < ?',
      (Date.today - 2.years).end_of_year)
  end

  private

  def all_volunteers
    @all_volunteers ||= Volunteer.all
  end

end
