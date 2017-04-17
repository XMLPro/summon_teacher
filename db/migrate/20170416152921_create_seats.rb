class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.integer :class_room_id
      t.integer :num

      t.timestamps
    end
  end
end
