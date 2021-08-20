class ReservationsController < ApplicationController
  def index
  end

  def new
    @reservation = Reservation.new
    @menu = Menu.all
  end

  private
  def reservation_params
    params.require(:reservation).permit(:content, :image)
  end
end
