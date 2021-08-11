class BookingMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booking_email(params)
    @first_name = params["firstname"]
    @last_name = params["lastname"]
    @email = params["email"]
    @message = params["message"]

    mail(to: 'reginadeangelis91@gmail.com', 
         subject: 'New Innovative Fusion Booking!')
  end
end
