class AddRoomToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :room_name, :string
  end
end
