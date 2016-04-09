require 'csv'

namespace :import do

  desc "Import csv"
  task businesses: :environment do
    filename = File.join Rails.root, '50k_businesses.csv'
    CSV.foreach(filename, headers: true ) do |row|
      Business.create(row.to_hash)
    end
  end
end
