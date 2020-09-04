class PassengerMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def confirmation_email
        @passenger = params[:passenger]
        @url = booking_url(@passenger.booking.id)
        mail(to: @passenger.email, subject: 'Booking Confirmation')
    end
end
