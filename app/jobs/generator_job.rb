# frozen_string_literal: true

class GeneratorJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    file = "#{Rails.root}/public/data.csv"

    table = Booking.all # ";0" stops output.  Change "User" to any model.

    CSV.open(file, 'w') do |writer|
      writer << table.first.attributes.map { |a, _v| a }

      table.each do |s|
        writer << s.attributes.map { |_a, v| v }
      end
    end
  end
end
