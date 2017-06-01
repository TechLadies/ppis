# Preview all emails at http://localhost:3000/rails/mailers/new_event
class NewEventPreview < ActionMailer::Preview

  def notify_volunteers
    @event = Event.last
    volunteers = Volunteer.last, Volunteer.first
    NewEventMailer.notify_volunteers(@event, volunteers)
  end

  def autoregister_volunteers
    @event = Event.last
    volunteers = Volunteer.last, Volunteer.first
    NewEventMailer.autoregister_volunteers(@event, volunteers)
  end

  def invite_volunteer
    @event = Event.last
    @volunteer = Volunteer.last
    NewEventMailer.invite_volunteer(@event, @volunteer)
  end
  
  def approve_volunteer
    @event = Event.last
    current_volunteer = Volunteer.last
    NewEventMailer.approve_volunteer(@event, current_volunteer)
  end
  
  def register_volunteer
    @event = Event.last
    @volunteer = Volunteer.last
    NewEventMailer.register_volunteer(@event, @volunteer)
  end
end
