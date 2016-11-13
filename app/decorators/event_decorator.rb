class EventDecorator < SimpleDelegator

  def when
    start_time.strftime('%H:%M') + '-' + end_time.strftime('%H:%M') + ' on ' + date.strftime('%d %b %Y')
  end

  def duration
    "#{hours_for(super)} hour(s) #{minutes_in_words(super)}"
  end

  private

  def minutes_in_words(seconds)
    minutes = minutes_for(seconds)
    return '' if minutes == 0
    "#{minutes} minute(s)"
  end

  def hours_for(seconds)
    (seconds / 3600)
  end

  def minutes_for(seconds)
    ((seconds % 3600) / 60)
  end

end
