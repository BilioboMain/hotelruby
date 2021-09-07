# frozen_string_literal: true

class CreateRoomsAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms_admins do |t|
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
