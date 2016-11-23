class VolunteerQuery

  attr_reader :search, :filter, :volunteers

  def initialize(admin, params = {})
    @volunteers = Volunteer.order('LOWER(volunteers.name)')
    @volunteers = query_for_preferred_center(@volunteers, admin)

    @search = params[:search]
    @volunteers = query_for_search(@volunteers, @search)

    @filter = params[:filter]
    @volunteers = query_for_filter(@volunteers, @filter)
  end

  private

  def query_for_preferred_center(result, admin)
    return result if admin.center_id.blank?
    result.joins(:preferred_centers).where('preferred_centers.center_id = ?', admin.center_id)
  end

  def query_for_search(result, search)
    return result if search.blank?
    result.where('volunteers.name LIKE ? OR email LIKE ?', "%#{search}%", "%#{search}%")
  end

  def query_for_filter(result, filter)
    return result if filter.blank?
    result.joins(:skills).where(skills: { id: "#{filter}" })
  end

end
