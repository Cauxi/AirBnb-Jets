class UsersController < ApplicationController
  def show
    @user = current_user
    @jets = current_user.jets
    @bookings = current_user.bookings
    count = 0

    current_user.jets.each do |jet|
      count += jet.bookings.count { |booking| booking.status == "pending" }
    end
    @bookings_pending = count
    end
end
