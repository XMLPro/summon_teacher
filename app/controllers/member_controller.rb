class MemberController < ApplicationController
  def index
    seat_id = session['seat_id']
    if seat_id
      seat = Seat.find_by_id(seat_id)
      @seat =seat
    end
    render
  end

  def register
    if request.get?
      render
    elsif request.post?   
      # 現状複数クラス想定してないからとりあえず固定
      class_room = ClassRoom.find_or_create_by(name: 'KE302')
      seat = class_room.seats.find_by_num(params['seat']['num'])
      if seat.blank?
        @error = '席が存在しません'
        render
      else
        session['seat_id'] = seat.id
        redirect_to :action => 'index'
      end
    end
  end
end
