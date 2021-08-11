class BookingController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    BookingMailer.booking_email(params).deliver_now
  end

end
