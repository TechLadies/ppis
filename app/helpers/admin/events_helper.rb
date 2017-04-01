module Admin::EventsHelper

  def event_label(state)
    case state
    when 'draft' then 'badge bg-yellow'
    when 'cancelled' then 'badge bg-red'
    when 'published' then 'badge bg-green'
    end

  end

end
