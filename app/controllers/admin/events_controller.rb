class Admin::EventsController < Admin::BaseController

  def index
    @events = Event.order(date: :desc, start_time: :desc)
  end

  def show
    @event = find_event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to [:admin, @event]
    else
      render 'new'
    end
  end

  def edit
    @event = find_event
  end

  def update
    @event = find_event
    if @event.update(event_params)
      redirect_to [:admin, @event]
    else
      render 'edit'
    end
  end

  def publish
    @event = find_event
    @volunteers = Volunteer.joins(:preferred_centers).where('preferred_centers.center_id = ?', @event.center_id)
    @event.publish!
    @volunteers.each do |volunteer|
      NewEventMailer.notify_volunteer(@event, volunteer).deliver
    end
    redirect_to admin_events_path, notice: "Succesfully publish event: #{@event.event_name}"
  end

  def cancel
    @event = find_event
    @event.cancel!
    redirect_to admin_events_path, notice: "Succesfully cancel event: #{@event.event_name}"
  end

  private

  def find_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:center_id, :event_name, :description, :date, :start_time, :end_time, :location,
      :number_of_volunteers,
      job_requirements_attributes: [:id, :job_title, :number_of_volunteers, :description, :_destroy]
    )
  end

end
