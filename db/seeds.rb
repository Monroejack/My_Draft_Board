# Player.destroy_all
#
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'players.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   puts row.to_hash
# end


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
