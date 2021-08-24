class ReservationsController < ApplicationController
  def index
    @menu = Menu.all
  end

  def new
    @reservation = Reservation.new
    @menu = Menu.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
  end

  private
  def reservation_params
    params.require(:reservation).permit(:content, :image, :time, :date, :menu_id, :price, :people ).merge(user_id: current_user.id)
  end
end
