Player.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'players.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv
csv.each do |row|
  # row is a CSV::Row object, #to_h turns it into a Hash, which ActiveRecord will
  # happily use as attributes for the creation of a new record.
  Player.create(row.to_h)
end
# puts Player.all


#   t = Transaction.new
#   Players = {}
#   t.last_name = row['last_name']
#   t.first_name = row['first_name']
#   t.school = row['school']
#   t.position = row['position']
#   t.cbs_projection = row['cbs_projection']
#   t.nfl_projection = row['nfl_projection']
#   t.drafttek_projection = row['drafttek_projection']
#   t.composite_rating = row['composite_rating']
#   t.year = row['year']
#   t.save
#   t.all >> Players
#   puts "#{t.position} #{t.first_name} #{t.last_name} from #{school} saved"
# end
