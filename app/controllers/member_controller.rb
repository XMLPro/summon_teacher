class MemberController < ApplicationController
  def index
    render
  end

  def register
    if request.get?
      render
    elsif request.post?   
      # 現状複数クラス想定してないからとりあえず固定
      class_room = ClassRoom.find_by_name('KE302')
      seat = class_room.seats.find_by_num(params['seat']['num'])
      if seat.blank?
        @error = '席が存在しません'
        render
      else
        session['seat_id'] = seat.id
        render action: 'index'
      end
    end
  end
end
