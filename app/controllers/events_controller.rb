class EventsController < ApplicationController

  def index
    @events = Event.published.where('date > ?', Date.today)
  end

  def show
    @event = Event.published.find(params[:id])
  end

end
