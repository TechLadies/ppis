class VolunteerDecorator < SimpleDelegator

  def NRIC_No
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def marital_status
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def address
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def home_phone_number
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def language_spoken
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def about_me
    if super.blank?
      'Not given'
    else
      super
    end
  end

  def past_experience
    if super.blank?
      'Not given'
    else
      super
    end
  end

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

  def email_notification
    if super.blank?
      'Not completed'
    else
      super
    end
  end

end
