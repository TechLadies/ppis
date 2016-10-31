class VolunteerDecorator < SimpleDelegator

  def certifications
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end
  
  def formal_education
    if highest_education.blank?
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

  def target_groups
    if super.blank?
      'N/A'
    else
      super.map(&:name).to_sentence
    end
  end

end
