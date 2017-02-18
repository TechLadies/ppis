class Admin::VolunteerEventsController < Admin::BaseController

  def find
    @event = find_event
    center_volunteers = Volunteer.joins(:preferred_centers).where('preferred_centers.center_id = ?', @event.center_id)
    @find_volunteers = center_volunteers.left_outer_joins(:events).where( volunteer_events: {:volunteer => nil} )
  end

  def invite
    @event = find_event
    @volunteer = find_volunteer
    @volunteer_event = @event.volunteer_events.create(volunteer: @volunteer)
    @volunteer_event.invite!
    @volunteers_event.NewEventMailer.invite_volunteer(@volunteer_event, volunteer).deliver
    redirect_to admin_event_path(@event)
  end

  def pending
    @event = find_event
    @pending_volunteer_events = @event.volunteer_events.registered
    @invited_volunteer_events = @event.volunteer_events.invited
  end

  def approve
    @event = find_event
    @volunteer_event = find_volunteer_event
    @volunteer_event.approve!
  end

  def decline
    @event = find_event
    @volunteer_event = find_volunteer_event
    @volunteer_event.decline!
  end

  def approved
    @event = find_event
    @approved_volunteer_events = @event.volunteer_events.where(state: [:approved, :attended, :no_show])
  end

  def attended
    @event = find_event
    @volunteer_event = find_volunteer_event
    if params[:attend] == '1'
      @volunteer_event.attend!
    else
      @volunteer_event.absent!
    end
  end

    def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to [:admin, @event]
      else
        render 'new'
      end
    end


  private

  def find_event
    Event.find(params[:event_id])
  end

  def find_volunteer
    Volunteer.find(params[:id])
  end

  def find_volunteer_event
    @event.volunteer_events.find(params[:id])
  end

end
