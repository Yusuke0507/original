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
    params.require(:reservation).permit(:content, :image, :time, :date).merge(user_id: current_user.id, menu_id: params[:menu_id])
  end
end
