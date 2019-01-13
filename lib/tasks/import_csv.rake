require 'csv'

namespace :import_csv do
  desc "Importing sites from CSV"
  task import_sites: :environment do
    path = Rails.root.join('lib', "sites.csv")

    CSV.foreach(path, :headers => true, encoding: "UTF-8") do |row|
       Site.create!(row.to_hash)#Model is the name of your model
    end
  end

  desc "Importing parts from CSV"
  task import_parts: :environment do
    filename = Rails.root.join('lib', "parts.csv")

    CSV.foreach(filename, :headers => true, encoding: "UTF-8") do |row|
      Part.create!(row.to_hash)#Model is the name of your model
    end
    puts "Parts added"
  end

end
