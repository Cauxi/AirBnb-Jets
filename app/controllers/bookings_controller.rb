class BookingsController < ApplicationController
  before_action :set_jet, only: [:new, :create]

  def index
    @bookings = Booking.all
  end
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.jet = @jet
    if @booking.save
      redirect_to jet_path(@jet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def set_jet
    @jet = Jet.find(params[:jet_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :jet_id)
  end

end