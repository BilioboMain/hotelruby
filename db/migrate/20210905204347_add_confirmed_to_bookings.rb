# frozen_string_literal: true

class AddConfirmedToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :confirmed, :boolean
  end
end
