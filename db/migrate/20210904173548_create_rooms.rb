class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :body
      t.string :string

      t.timestamps
    end
  end
end
