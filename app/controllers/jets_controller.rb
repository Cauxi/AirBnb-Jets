class JetsController < ApplicationController
  before_action :set_jet, only: [:show]

  def index
    @jets = Jet.all
    count = 0
    current_user.jets.each do |jet|
      count += jet.bookings.count { |booking| booking.status == "pending" }
    end
    @bookings_pending = count
    if params[:query].present?
      sql_subquery = "city @@ :query OR country @@ :query"
      @jets = @jets.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @marker = { lat: @jet.latitude, lng: @jet.longitude }
    @booking = Booking.new
    count = 0
    current_user.jets.each do |jet|
      count += jet.bookings.count { |booking| booking.status == "pending" }
    end
    @bookings_pending = count
  end

  def new
    @jet = Jet.new
    count = 0
    current_user.jets.each do |jet|
      count += jet.bookings.count { |booking| booking.status == "pending" }
    end
    @bookings_pending = count
  end

  def create
    @jet = Jet.new(jet_params)
    @jet.user = current_user
    if @jet.save
      redirect_to jet_path(@jet), notice: 'jet was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def set_jet
    @jet = Jet.find(params[:id])
  end
  def jet_params
    params.require(:jet).permit(:name, :description, :price, :user_id, :photo, :city, :country)
  end
end
