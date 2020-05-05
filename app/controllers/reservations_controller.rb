class ReservationsController < ApplicationController

  def index
    
  end
  
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save!
    else
      redirect_to action: :new
    end
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
