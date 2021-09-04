class AddPostedToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :posted, :boolean
  end
end
