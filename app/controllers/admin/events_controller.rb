class Admin::EventsController < Admin::BaseController

  def index
    @events = Event.all
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

  private

  def find_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:center_id, :event_name, :description, :date, :start_time, :end_time, :location,
      :number_of_volunteers)
  end

end
