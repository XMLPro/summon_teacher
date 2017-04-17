# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

room_files = Dir.glob("db/csv/*.csv")
room_files.each do |room_file|
    file_name = File.basename(room_file)
    room_name = File.basename(room_file, ".csv")
    class_room = ClassRoom.find_or_create_by(name: room_name)
    
    CSV.foreach(room_file) do |row|
        seat = class_room.seats.find_or_create_by(num: row[0])
    end
end