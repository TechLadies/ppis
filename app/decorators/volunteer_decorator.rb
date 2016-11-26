class VolunteerDecorator < SimpleDelegator

  def date_of_birth
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def mobile
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def profession
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def certifications
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end

  def formal_education
    if super.blank?
      'N/A'
    else
      super
    end
  end

  def skills
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end

  def centers
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end

  def target_groups
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end

  def availabilities
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end

  def other_talents
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def about_me
    if super.blank?
      'Not completed'
    else
      super
    end
  end

end
