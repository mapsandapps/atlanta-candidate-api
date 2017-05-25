require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
city_wide = ['Mayor', 'City Council President', 'City Council At-Large 1',
             'City Council At-Large 2', 'City Council At-Large 3']
city_wide.each do |office|
  Office.create(name: office)
end
(1..12).to_a.each do |district_num|
  Office.create(name: "City Council", district_id: district_num)
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'candidates.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  if (row['First_name'])
    candidate = Candidate.new(
        first_name: row['First_name'],
        last_name: row['Last_name']
    )

    if (row['District'])
      candidate.office_id = Office.where(name: 'City Council', district_id: row['District'].to_i).first.id
    else
      candidate.office_id = Office.where(name: row['Office']).first.id
    end
    candidate.save
  end
end