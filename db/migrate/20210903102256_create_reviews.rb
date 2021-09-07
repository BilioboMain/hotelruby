# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :author_name
      t.text :email
      t.text :body

      t.timestamps
    end
  end
end
