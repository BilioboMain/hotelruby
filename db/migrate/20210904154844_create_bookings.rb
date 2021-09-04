class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.date  :date_in
      t.date :date_out

      t.timestamps
    end
  end
end
