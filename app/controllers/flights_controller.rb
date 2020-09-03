class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.map { |a| [a.code, a.id] }
        @passenger_options = (1..4).to_a.map { |num| [num.to_s, num]}
        date_options = Flight.all.map { |d| [d.start_time.strftime("%d/%m/%Y"), d.start_time.strftime("%d/%m/%Y")] }
        @date_options = date_options.uniq
        if flight_params.has_key?(:date)
            @flights = Flight.where(
                start_id: flight_params[:from_code], 
                finish_id: flight_params[:to_code], 
                start_time: DateTime.strptime(flight_params[:date], '%d/%m/%Y').beginning_of_day..DateTime.strptime(flight_params[:date], '%d/%m/%Y').end_of_day
            )
        else
            @flights = Flight.all
        end
    end

    private

    def flight_params
        params.permit(:to_code, :from_code, :num_tickets, :date, :commit, :utf8)
    end
end
