class VolunteerQuery

  attr_reader :search, :skill_filter, :cert_filter, :volunteers

  def initialize(admin, params = {}, volunteers = Volunteer.order('LOWER(volunteers.name)'))
    @volunteers = volunteers
    @volunteers = query_for_preferred_center(@volunteers, admin)

    @search = params[:search]
    @volunteers = query_for_search(@volunteers, @search)

    @skill_filter = params[:skill_filter]
    @volunteers = query_for_skill_filter(@volunteers, @skill_filter)

    @cert_filter = params[:cert_filter]
    @volunteers = query_for_cert_filter(@volunteers, @cert_filter)
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

  def query_for_skill_filter(result, filter)
    return result if filter.blank?
    result.joins(:skills).where(skills: { id: "#{filter}" })
  end

  def query_for_cert_filter(result, filter)
    return result if filter.blank?
    result.joins(:certifications).where(certifications: { id: "#{filter}" })
  end

end
