class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if current_user
      count = 0

      current_user.jets.each do |jet|
        count += jet.bookings.count { |booking| booking.status == "pending" }
      end
      @bookings_pending = count
    end 
  end
end
