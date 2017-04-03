class NewEventMailer < ApplicationMailer

  def notify_volunteers(event, volunteers)
    @event = event
    mail(bcc: volunteers.map(&:email), subject: "New event by PPIS: #{@event.event_name}")
  end

  def invite_volunteer(event, volunteer)
    @event = event
    @volunteer = volunteer

    mail(to: @volunteer.email, subject: "Please join PPIS for #{@event.event_name}")
  end
end
