class AddPositionToSeat < ActiveRecord::Migration[5.1]
  def change
    change_table :seats do |t|
      t.string :position
      t.index [:position, :class_room_id], unique: true
    end
  end
end
