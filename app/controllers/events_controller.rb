class EventsController < ApplicationController

  def index
    @events = Event.published.where('date > ?', Date.today)
  end

  def show
    @event = Event.published.find(params[:id])
    @presenter = My::EventPresenter.new(current_volunteer, @event)
  end

end
