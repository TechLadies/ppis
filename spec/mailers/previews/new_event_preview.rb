# Preview all emails at http://localhost:3000/rails/mailers/new_event
class NewEventPreview < ActionMailer::Preview

  def notify_volunteer
    event = Event.last
    NewEventMailer.notify_volunteer(event)
  end

end
