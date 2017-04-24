class TopController < ApplicationController
  def index
    seat_id = session['seat_id']
    if seat_id
      seat = Seat.find_by_id(seat_id)
      @seat = seat
    end
  end
end
