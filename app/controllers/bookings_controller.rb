class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight = Flight.find(selection_params[:flight_id])
        @tickets = selection_params[:tickets]
        @tickets.to_i.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.create(booking_params)
        booking_params[:passengers_attributes].each do |id, details|
            Passenger.create(details)
        end
        redirect_to booking_path(@booking.id)
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:id, :flight_id, :tickets, :passengers_attributes => [:name, :email])
    end

    def selection_params
        params.permit(:flight_id, :tickets)
    end
end
