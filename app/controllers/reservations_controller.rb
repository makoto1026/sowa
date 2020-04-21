class ReservationsController < ApplicationController

  def index
    
  end
  
  def create
    @reservations = current_user.reservation.create(reservation_params)
  end

  def new
    @reservation = Reservation.new
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def reservation_params
    params.require(:reservation).permit(:datetime, :place, :taxi_id).merge(user_id: current_user.id)
  end
  
end
