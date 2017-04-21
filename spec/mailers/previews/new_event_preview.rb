# Preview all emails at http://localhost:3000/rails/mailers/new_event
class NewEventPreview < ActionMailer::Preview

  def notify_volunteer
    @event = Event.last
    volunteer = Volunteer.last
    NewEventMailer.notify_volunteer(@event, volunteer)
  end

  def invite_volunteer
    @event = Event.last
    @volunteer = Volunteer.last
    NewEventMailer.invite_volunteer(@event, @volunteer)
  end

  def register_volunteer
    @event = Event.last
    @volunteer = Volunteer.last
    NewEventMailer.register_volunteer(@event, @volunteer)
  end

end
