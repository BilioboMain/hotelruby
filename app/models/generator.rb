# frozen_string_literal: true

class Generator < ApplicationRecord
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |booking|
        csv << booking.attributes.values_at(*column_name)
      end
    end
  end
end
