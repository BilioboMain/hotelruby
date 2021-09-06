class AddPriceToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms_admins, :price, :integer
  end
end
