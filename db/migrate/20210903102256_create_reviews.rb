class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :id
      t.text :author_name
      t.text :email
      t.text :body

      t.timestamps
    end
  end
end
