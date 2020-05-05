class EventsController < ApplicationController

  def new
    @event = Reservation.new
    render plain: render_to_string(partial: 'form_new', layout: false, locals: { event: @event })
  end

  def create
    @event = Event.new(event_params)
  end


  private

  def event_params
    params.require(:event).permit(:title, :start_time, :description).merge(user_id: current_user.id)
  end
end
