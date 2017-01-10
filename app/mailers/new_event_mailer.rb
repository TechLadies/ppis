class NewEventMailer < ApplicationMailer

  def notify_volunteer(event)
    @event = event
    @volunteer = volunteers.all
    mail(to: @volunteer.email, subject: 'New event by PPIS')
  end
end
