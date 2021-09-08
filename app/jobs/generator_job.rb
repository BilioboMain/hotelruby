class GeneratorJob < ApplicationJob
  queue_as :default

  def perform(*args)
    require 'csv'
 
    file = "#{Rails.root}/public/data.csv"
     
    table = Booking.all() # ";0" stops output.  Change "User" to any model.
     
    CSV.open( file, 'w' ) do |writer|

      writer << table.first.attributes.map { |a,v| a }
      
      table.each do |s|
        writer << s.attributes.map { |a,v| v }
      end
    end
  end
end
