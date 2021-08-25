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
    if @reservation.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation)
  end
end
