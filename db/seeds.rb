# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Notification.destroy_all
Message.destroy_all
Participant.destroy_all
Room.destroy_all
Bet.destroy_all
Invitation.destroy_all
Match.destroy_all
Matchweek.destroy_all
Team.destroy_all
League.destroy_all
Season.destroy_all
User.destroy_all

# puts "Creating chatrooms..."
# Room.create(name: 'ligue 1', is_private: false)
# Room.create(name: 'Discussions générales', is_private: false)
# Room.create(name: 'Conseils sur les pronos', is_private: false)
# puts ">> 3 public chatrooms created !"

puts "Creating Players..."
gui = User.create(email: 'gui@gui.com', password: 'gui@gui.com', username: 'Guillaume', admin: true)
ber = User.create(email: 'ber@ber.com', password: 'ber@ber.com', username: 'Bernard')

puts ">> Players created !"

puts "Creating friendship..."

Invitation.create(user: gui, friend_id: ber.id, confirmed: true)

puts "Guillaume and Bernard are now friends !"

puts "Creating a new Season..."

season = Season.create(name: "22/23")

puts ">> Seasons 22/23 created !"

puts "Creating Ligue 1 League..."

ligue1 = League.create(name: 'Ligue 1', season_id:season.id)
paris = Team.new(name: 'Paris-SG', league_id: ligue1.id)
paris.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'paris.png')), filename: 'paris.png', content_type: 'paris.png')
paris.save!
lens = Team.new(name: 'Lens', league_id: ligue1.id)
lens.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'lens.png')), filename: 'lens.png', content_type: 'lens.png')
lens.save!
rennes = Team.new(name: 'Rennes', league_id: ligue1.id)
rennes.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'rennes.png')), filename: 'rennes.png', content_type: 'rennes.png')
rennes.save!
marseille = Team.new(name: 'Marseille', league_id: ligue1.id)
marseille.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'marseille.png')), filename: 'marseille.png', content_type: 'marseille.png')
marseille.save!
lorient = Team.new(name: 'Lorient', league_id: ligue1.id)
lorient.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'lorient.png')), filename: 'lorient.png', content_type: 'lorient.png')
lorient.save!
monaco = Team.new(name: 'Monaco', league_id: ligue1.id)
monaco.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'monaco.png')), filename: 'monaco.png', content_type: 'monaco.png')
monaco.save!
lille = Team.new(name: 'Lille', league_id: ligue1.id)
lille.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'lille.png')), filename: 'lille.png', content_type: 'lille.png')
lille.save!
lyon = Team.new(name: 'Lyon', league_id: ligue1.id)
lyon.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'lyon.png')), filename: 'lyon.png', content_type: 'lyon.png')
lyon.save!
nice = Team.new(name: 'Nice', league_id: ligue1.id)
nice.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'nice.png')), filename: 'nice.png', content_type: 'nice.png')
nice.save!
clermont = Team.new(name: 'Clermont', league_id: ligue1.id)
clermont.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'clermont.png')), filename: 'clermont.png', content_type: 'clermont.png')
clermont.save!
reims = Team.new(name: 'Reims', league_id: ligue1.id)
reims.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'reims.png')), filename: 'reims.png', content_type: 'reims.png')
reims.save!
toulouse = Team.new(name: 'Toulouse', league_id: ligue1.id)
toulouse.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'toulouse.png')), filename: 'toulouse.png', content_type: 'toulouse.png')
toulouse.save!
troyes = Team.new(name: 'Troyes', league_id: ligue1.id)
troyes.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'troyes.png')), filename: 'troyes.png', content_type: 'troyes.png')
troyes.save!
montpellier = Team.new(name: 'Montpellier', league_id: ligue1.id)
montpellier.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'montpellier.png')), filename: 'montpellier.png', content_type: 'montpellier.png')
montpellier.save!
nantes = Team.new(name: 'Nantes', league_id: ligue1.id)
nantes.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'nantes.png')), filename: 'nantes.png', content_type: 'nantes.png')
nantes.save!
brest = Team.new(name: 'Brest', league_id: ligue1.id)
brest.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'brest.png')), filename: 'brest.png', content_type: 'brest.png')
brest.save!
auxerre = Team.new(name: 'Auxerre', league_id: ligue1.id)
auxerre.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'auxerre.png')), filename: 'auxerre.png', content_type: 'auxerre.png')
auxerre.save!
ajaccio = Team.new(name: 'AC Ajaccio', league_id: ligue1.id)
ajaccio.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'ajaccio.png')), filename: 'ajaccio.png', content_type: 'ajaccio.png')
ajaccio.save!
strasbourg = Team.new(name: 'Strasbourg', league_id: ligue1.id)
strasbourg.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'strasbourg.png')), filename: 'strasbourg.png', content_type: 'strasbourg.png')
strasbourg.save!
angers = Team.new(name: 'Angers', league_id: ligue1.id)
angers.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'angers.png')), filename: 'angers.png', content_type: 'angers.png')
angers.save!
puts ">> Ligue 1 Ready !"

puts "Creating matchweeks..."

mw1 = Matchweek.create(number: 1, league_id: ligue1.id)
mw2 = Matchweek.create(number: 2, league_id: ligue1.id)
mw3 = Matchweek.create(number: 3, league_id: ligue1.id)
mw4 = Matchweek.create(number: 4, league_id: ligue1.id)
mw5 = Matchweek.create(number: 5, league_id: ligue1.id)
mw6 = Matchweek.create(number: 6, league_id: ligue1.id)
mw7 = Matchweek.create(number: 7, league_id: ligue1.id)
mw8 = Matchweek.create(number: 8, league_id: ligue1.id)
mw9 = Matchweek.create(number: 9, league_id: ligue1.id)
mw10 = Matchweek.create(number: 10, league_id: ligue1.id)
mw11 = Matchweek.create(number: 11, league_id: ligue1.id)
mw12 = Matchweek.create(number: 12, league_id: ligue1.id)
mw13 = Matchweek.create(number: 13, league_id: ligue1.id)
mw14 = Matchweek.create(number: 14, league_id: ligue1.id)
mw15 = Matchweek.create(number: 15, league_id: ligue1.id)
mw16 = Matchweek.create(number: 16, league_id: ligue1.id)
mw17 = Matchweek.create(number: 17, league_id: ligue1.id)
mw18 = Matchweek.create(number: 18, league_id: ligue1.id)
mw19 = Matchweek.create(number: 19, league_id: ligue1.id)
mw20 = Matchweek.create(number: 20, league_id: ligue1.id)
mw21 = Matchweek.create(number: 21, league_id: ligue1.id)
mw22 = Matchweek.create(number: 22, league_id: ligue1.id)
mw23 = Matchweek.create(number: 23, league_id: ligue1.id)
mw24 = Matchweek.create(number: 24, league_id: ligue1.id)
mw25 = Matchweek.create(number: 25, league_id: ligue1.id)
mw26 = Matchweek.create(number: 26, league_id: ligue1.id)
mw27 = Matchweek.create(number: 27, league_id: ligue1.id)
mw28 = Matchweek.create(number: 28, league_id: ligue1.id)
mw29 = Matchweek.create(number: 29, league_id: ligue1.id)
mw30 = Matchweek.create(number: 30, league_id: ligue1.id)
mw31 = Matchweek.create(number: 31, league_id: ligue1.id)
mw32 = Matchweek.create(number: 32, league_id: ligue1.id)
mw33 = Matchweek.create(number: 33, league_id: ligue1.id)
mw34 = Matchweek.create(number: 34, league_id: ligue1.id)
mw35 = Matchweek.create(number: 35, league_id: ligue1.id)
mw36 = Matchweek.create(number: 36, league_id: ligue1.id)
mw37 = Matchweek.create(number: 37, league_id: ligue1.id)
mw38 = Matchweek.create(number: 38, league_id: ligue1.id)

puts ">> 38 matchweeks created !"

puts "Creating matchweek #1 matches..."

Match.create(team_home_id: lyon.id, team_away_id: ajaccio.id, matchweek: mw1, date: Date.new(2022,8,5), played: true, result: "2 1")
Match.create(team_home_id: strasbourg.id, team_away_id: monaco.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "1 2")
Match.create(team_home_id: clermont.id, team_away_id: paris.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "0 5")
Match.create(team_home_id: toulouse.id, team_away_id: nice.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "1 1")
Match.create(team_home_id: lille.id, team_away_id: auxerre.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "4 1")
Match.create(team_home_id: angers.id, team_away_id: nantes.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "0 0")
Match.create(team_home_id: montpellier.id, team_away_id: troyes.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "3 2")
Match.create(team_home_id: lens.id, team_away_id: brest.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "3 2")
Match.create(team_home_id: rennes.id, team_away_id: lorient.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "0 1")
Match.create(team_home_id: marseille.id, team_away_id: reims.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "4 1")

puts ">> Matchweek #1 created !"
puts "Creating matchweek #2 matches..."

Match.create(team_home_id: nantes.id, team_away_id: lille.id, matchweek: mw2, date: Date.new(2022,8,12), played: true, result: "1 1")
Match.create(team_home_id: monaco.id, team_away_id: rennes.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "1 1")
Match.create(team_home_id: paris.id, team_away_id: montpellier.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "5 2")
Match.create(team_home_id: ajaccio.id, team_away_id: lens.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "0 0")
Match.create(team_home_id: troyes.id, team_away_id: toulouse.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "0 3")
Match.create(team_home_id: auxerre.id, team_away_id: angers.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "2 2")
Match.create(team_home_id: reims.id, team_away_id: clermont.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "2 4")
Match.create(team_home_id: nice.id, team_away_id: strasbourg.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "1 1")
Match.create(team_home_id: brest.id, team_away_id: marseille.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "1 1")
Match.create(team_home_id: lorient.id, team_away_id: lyon.id, matchweek: mw2, date: Date.new(2022,8,15), played: true, result: "3 1")

puts ">> Matchweek #2 created !"
puts "Creating matchweek #3 matches..."

Match.create(team_home_id: lyon.id, team_away_id: troyes.id, matchweek: mw3, date: Date.new(2022,8,19), played: true, result: "4 1")
Match.create(team_home_id: monaco.id, team_away_id: lens.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "1 4")
Match.create(team_home_id: marseille.id, team_away_id: nantes.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "2 1")
Match.create(team_home_id: strasbourg.id, team_away_id: reims.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "1 1")
Match.create(team_home_id: toulouse.id, team_away_id: lorient.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "2 2")
Match.create(team_home_id: montpellier.id, team_away_id: auxerre.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "1 2")
Match.create(team_home_id: clermont.id, team_away_id: nice.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "1 0")
Match.create(team_home_id: angers.id, team_away_id: brest.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "1 3")
Match.create(team_home_id: rennes.id, team_away_id: ajaccio.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "2 1")
Match.create(team_home_id: lille.id, team_away_id: paris.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "1 7")

puts ">> Matchweek #3 created !"
puts "Creating matchweek #4 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: lille.id, matchweek: mw4, date: Date.new(2022,8,26), played: true, result: "1 3")
Match.create(team_home_id: auxerre.id, team_away_id: strasbourg.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "1 0")
Match.create(team_home_id: lens.id, team_away_id: rennes.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "2 1")
Match.create(team_home_id: nantes.id, team_away_id: toulouse.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "3 1")
Match.create(team_home_id: nice.id, team_away_id: marseille.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "0 3")
Match.create(team_home_id: lorient.id, team_away_id: clermont.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "2 1")
Match.create(team_home_id: brest.id, team_away_id: montpellier.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "0 7")
Match.create(team_home_id: troyes.id, team_away_id: angers.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "3 1")
Match.create(team_home_id: reims.id, team_away_id: lyon.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "1 1")
Match.create(team_home_id: paris.id, team_away_id: monaco.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "1 1")

puts ">> Matchweek #4 created !"
puts "Creating matchweek #5 matches..."

Match.create(team_home_id: lyon.id, team_away_id: auxerre.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "2 1")
Match.create(team_home_id: montpellier.id, team_away_id: ajaccio.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "2 0")
Match.create(team_home_id: strasbourg.id, team_away_id: nantes.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "1 1")
Match.create(team_home_id: monaco.id, team_away_id: troyes.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "2 4")
Match.create(team_home_id: angers.id, team_away_id: reims.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "2 4")
Match.create(team_home_id: toulouse.id, team_away_id: paris.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "0 3")
Match.create(team_home_id: marseille.id, team_away_id: clermont.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "1 0")
Match.create(team_home_id: lens.id, team_away_id: lorient.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "5 2")
Match.create(team_home_id: lille.id, team_away_id: nice.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "1 2")
Match.create(team_home_id: rennes.id, team_away_id: brest.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "3 1")

puts ">> Matchweek #5 created !"
puts "Creating matchweek #6 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: marseille.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "0 2")
Match.create(team_home_id: lyon.id, team_away_id: angers.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "5 0")
Match.create(team_home_id: nantes.id, team_away_id: paris.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "0 3")
Match.create(team_home_id: montpellier.id, team_away_id: lille.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "1 3")
Match.create(team_home_id: reims.id, team_away_id: lens.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "1 1")
Match.create(team_home_id: ajaccio.id, team_away_id: lorient.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "0 1")
Match.create(team_home_id: clermont.id, team_away_id: toulouse.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "2 0")
Match.create(team_home_id: brest.id, team_away_id: strasbourg.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "1 1")
Match.create(team_home_id: troyes.id, team_away_id: rennes.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "1 1")
Match.create(team_home_id: nice.id, team_away_id: monaco.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "0 1")

puts ">> Matchweek #6 created !"
puts "Creating matchweek #7 matches..."

Match.create(team_home_id: lens.id, team_away_id: troyes.id, matchweek: mw7, date: Date.new(2022,9,9), played: true, result: "1 0")
Match.create(team_home_id: paris.id, team_away_id: brest.id, matchweek: mw7, date: Date.new(2022,9,10), played: true, result: "1 0")
Match.create(team_home_id: marseille.id, team_away_id: lille.id, matchweek: mw7, date: Date.new(2022,9,10), played: true, result: "2 1")
Match.create(team_home_id: strasbourg.id, team_away_id: clermont.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "0 0")
Match.create(team_home_id: lorient.id, team_away_id: nantes.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "3 2")
Match.create(team_home_id: angers.id, team_away_id: montpellier.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "2 1")
Match.create(team_home_id: toulouse.id, team_away_id: reims.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "1 0")
Match.create(team_home_id: ajaccio.id, team_away_id: nice.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "0 1")
Match.create(team_home_id: rennes.id, team_away_id: auxerre.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "5 0")
Match.create(team_home_id: monaco.id, team_away_id: lyon.id, matchweek: mw7, date: Date.new(2022,9,11), played: true, result: "2 1")

puts ">> Matchweek #7 created !"
puts "Creating matchweek #8 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: lorient.id, matchweek: mw8, date: Date.new(2022,9,16), played: true, result: "1 3")
Match.create(team_home_id: montpellier.id, team_away_id: strasbourg.id, matchweek: mw8, date: Date.new(2022,9,17), played: true, result: "2 1")
Match.create(team_home_id: lille.id, team_away_id: toulouse.id, matchweek: mw8, date: Date.new(2022,9,17), played: true, result: "2 1")
Match.create(team_home_id: reims.id, team_away_id: monaco.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "0 3")
Match.create(team_home_id: marseille.id, team_away_id: rennes.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "1 1")
Match.create(team_home_id: clermont.id, team_away_id: troyes.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "1 3")
Match.create(team_home_id: nice.id, team_away_id: angers.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "0 1")
Match.create(team_home_id: brest.id, team_away_id: ajaccio.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "0 1")
Match.create(team_home_id: nantes.id, team_away_id: lens.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "0 0")
Match.create(team_home_id: lyon.id, team_away_id: paris.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "0 1")

puts ">> Matchweek #8 created !"
puts "Creating matchweek #9 matches..."

Match.create(team_home_id: angers.id, team_away_id: marseille.id, matchweek: mw9, date: Date.new(2022,9,30), played: true, result: "0 3")
Match.create(team_home_id: strasbourg.id, team_away_id: rennes.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "1 3")
Match.create(team_home_id: paris.id, team_away_id: nice.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "2 1")
Match.create(team_home_id: lorient.id, team_away_id: lille.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "2 1")
Match.create(team_home_id: toulouse.id, team_away_id: montpellier.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "4 2")
Match.create(team_home_id: troyes.id, team_away_id: reims.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "2 2")
Match.create(team_home_id: ajaccio.id, team_away_id: clermont.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "1 3")
Match.create(team_home_id: auxerre.id, team_away_id: brest.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "1 1")
Match.create(team_home_id: monaco.id, team_away_id: nantes.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "4 1")
Match.create(team_home_id: lens.id, team_away_id: lyon.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "1 0")

puts ">> Matchweek #9 created !"
puts "Creating matchweek #10 matches..."

Match.create(team_home_id: lyon.id, team_away_id: toulouse.id, matchweek: mw10, date: Date.new(2022,10,7), played: true, result: "1 1")
Match.create(team_home_id: marseille.id, team_away_id: ajaccio.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "1 2")
Match.create(team_home_id: reims.id, team_away_id: paris.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "0 0")
Match.create(team_home_id: montpellier.id, team_away_id: monaco.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "0 2")
Match.create(team_home_id: brest.id, team_away_id: lorient.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "1 2")
Match.create(team_home_id: clermont.id, team_away_id: auxerre.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "2 1")
Match.create(team_home_id: nice.id, team_away_id: troyes.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "3 2")
Match.create(team_home_id: angers.id, team_away_id: strasbourg.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "2 3")
Match.create(team_home_id: rennes.id, team_away_id: nantes.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "3 0")
Match.create(team_home_id: lille.id, team_away_id: lens.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "1 0")

puts ">> Matchweek #10 created !"
puts "Creating matchweek #11 matches..."

Match.create(team_home_id: strasbourg.id, team_away_id: lille.id, matchweek: mw11, date: Date.new(2022,10,14), played: true, result: "0 3")
Match.create(team_home_id: lorient.id, team_away_id: reims.id, matchweek: mw11, date: Date.new(2022,10,15), played: true, result: "0 0")
Match.create(team_home_id: lens.id, team_away_id: montpellier.id, matchweek: mw11, date: Date.new(2022,10,15), played: true, result: "1 0")
Match.create(team_home_id: toulouse.id, team_away_id: angers.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "3 2")
Match.create(team_home_id: rennes.id, team_away_id: lyon.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "3 2")
Match.create(team_home_id: troyes.id, team_away_id: ajaccio.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "1 1")
Match.create(team_home_id: auxerre.id, team_away_id: nice.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "1 1")
Match.create(team_home_id: nantes.id, team_away_id: brest.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "4 1")
Match.create(team_home_id: monaco.id, team_away_id: clermont.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "1 1")
Match.create(team_home_id: paris.id, team_away_id: marseille.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "1 0")

puts ">> Matchweek #11 created !"
puts "Creating matchweek #12 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: paris.id, matchweek: mw12, date: Date.new(2022,10,21), played: true, result: "0 3")
Match.create(team_home_id: montpellier.id, team_away_id: lyon.id, matchweek: mw12, date: Date.new(2022,10,22), played: true, result: "1 2")
Match.create(team_home_id: marseille.id, team_away_id: lens.id, matchweek: mw12, date: Date.new(2022,10,22), played: true, result: "0 1")
Match.create(team_home_id: angers.id, team_away_id: rennes.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "1 2")
Match.create(team_home_id: troyes.id, team_away_id: lorient.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "2 2")
Match.create(team_home_id: clermont.id, team_away_id: brest.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "1 3")
Match.create(team_home_id: toulouse.id, team_away_id: strasbourg.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "2 2")
Match.create(team_home_id: reims.id, team_away_id: auxerre.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "2 1")
Match.create(team_home_id: nice.id, team_away_id: nantes.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "1 1")
Match.create(team_home_id: lille.id, team_away_id: monaco.id, matchweek: mw12, date: Date.new(2022,10,23), played: true, result: "4 3")

puts ">> Matchweek #12 created !"
puts "Creating matchweek #13 matches..."

Match.create(team_home_id: lens.id, team_away_id: toulouse.id, matchweek: mw13, date: Date.new(2022,10,28), played: true, result: "3 0")
Match.create(team_home_id: paris.id, team_away_id: troyes.id, matchweek: mw13, date: Date.new(2022,10,29), played: true, result: "4 3")
Match.create(team_home_id: strasbourg.id, team_away_id: marseille.id, matchweek: mw13, date: Date.new(2022,10,29), played: true, result: "2 2")
Match.create(team_home_id: auxerre.id, team_away_id: ajaccio.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "1 0")
Match.create(team_home_id: rennes.id, team_away_id: montpellier.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "3 0")
Match.create(team_home_id: monaco.id, team_away_id: angers.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "2 0")
Match.create(team_home_id: nantes.id, team_away_id: clermont.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "1 1")
Match.create(team_home_id: brest.id, team_away_id: reims.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "0 0")
Match.create(team_home_id: lorient.id, team_away_id: nice.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "1 2")
Match.create(team_home_id: lyon.id, team_away_id: lille.id, matchweek: mw13, date: Date.new(2022,10,30), played: true, result: "1 0")

puts ">> Matchweek #13 created !"
puts "Creating matchweek #14 matches..."

Match.create(team_home_id: troyes.id, team_away_id: auxerre.id, matchweek: mw14, date: Date.new(2022,11,4), played: true, result: "1 1")
Match.create(team_home_id: ajaccio.id, team_away_id: strasbourg.id, matchweek: mw14, date: Date.new(2022,11,5), played: true, result: "4 2")
Match.create(team_home_id: angers.id, team_away_id: lens.id, matchweek: mw14, date: Date.new(2022,11,5), played: true, result: "1 2")
Match.create(team_home_id: lorient.id, team_away_id: paris.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "1 2")
Match.create(team_home_id: toulouse.id, team_away_id: monaco.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "0 2")
Match.create(team_home_id: clermont.id, team_away_id: montpellier.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "1 1")
Match.create(team_home_id: nice.id, team_away_id: brest.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "1 0")
Match.create(team_home_id: reims.id, team_away_id: nantes.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "1 0")
Match.create(team_home_id: lille.id, team_away_id: rennes.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "1 1")
Match.create(team_home_id: marseille.id, team_away_id: lyon.id, matchweek: mw14, date: Date.new(2022,11,6), played: true, result: "1 0")

puts ">> Matchweek #14 created !"
puts "Creating matchweek #15 matches..."

Match.create(team_home_id: lyon.id, team_away_id: nice.id, matchweek: mw15, date: Date.new(2022,11,11), played: true, result: "1 1")
Match.create(team_home_id: lens.id, team_away_id: clermont.id, matchweek: mw15, date: Date.new(2022,11,12), played: true, result: "2 1")
Match.create(team_home_id: rennes.id, team_away_id: toulouse.id, matchweek: mw15, date: Date.new(2022,11,12), played: true, result: "2 1")
Match.create(team_home_id: paris.id, team_away_id: auxerre.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "5 0")
Match.create(team_home_id: lille.id, team_away_id: angers.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "1 0")
Match.create(team_home_id: montpellier.id, team_away_id: reims.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "1 1")
Match.create(team_home_id: brest.id, team_away_id: troyes.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "2 1")
Match.create(team_home_id: nantes.id, team_away_id: ajaccio.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "2 2")
Match.create(team_home_id: strasbourg.id, team_away_id: lorient.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "1 1")
Match.create(team_home_id: monaco.id, team_away_id: marseille.id, matchweek: mw15, date: Date.new(2022,11,13), played: true, result: "2 3")

puts ">> Matchweek #15 created !"
puts "Creating matchweek #16 matches..."

Match.create(team_home_id: troyes.id, team_away_id: nantes.id, matchweek: mw16, date: Date.new(2022,12,26), hour: 15)
Match.create(team_home_id: ajaccio.id, team_away_id: angers.id, matchweek: mw16, date: Date.new(2022,12,28), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: monaco.id, matchweek: mw16, date: Date.new(2022,12,28), hour: 17)
Match.create(team_home_id: clermont.id, team_away_id: lille.id, matchweek: mw16, date: Date.new(2022,12,28), hour: 19)
Match.create(team_home_id: paris.id, team_away_id: strasbourg.id, matchweek: mw16, date: Date.new(2022,12,28), hour: 21)
Match.create(team_home_id: brest.id, team_away_id: lyon.id, matchweek: mw16, date: Date.new(2022,12,28), hour: 21)
Match.create(team_home_id: lorient.id, team_away_id: montpellier.id, matchweek: mw16, date: Date.new(2022,12,29), hour: 17)
Match.create(team_home_id: reims.id, team_away_id: rennes.id, matchweek: mw16, date: Date.new(2022,12,29), hour: 19)
Match.create(team_home_id: nice.id, team_away_id: lens.id, matchweek: mw16, date: Date.new(2022,12,29), hour: 21)
Match.create(team_home_id: marseille.id, team_away_id: toulouse.id, matchweek: mw16, date: Date.new(2022,12,29), hour: 21)

puts ">> Matchweek #16 created !"
puts "Creating matchweek #17 matches..."

Match.create(team_home_id: monaco.id, team_away_id: brest.id, matchweek: mw17, date: Date.new(2023,1,1), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: lorient.id, matchweek: mw17, date: Date.new(2023,1,1), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: auxerre.id, matchweek: mw17, date: Date.new(2023,1,1), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: ajaccio.id, matchweek: mw17, date: Date.new(2023,1,1), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: clermont.id, matchweek: mw17, date: Date.new(2023,1,1), hour: 17)
Match.create(team_home_id: lens.id, team_away_id: paris.id, matchweek: mw17, date: Date.new(2023,1,1), hour: 21)
Match.create(team_home_id: strasbourg.id, team_away_id: troyes.id, matchweek: mw17, date: Date.new(2023,1,2), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: reims.id, matchweek: mw17, date: Date.new(2023,1,2), hour: 17)
Match.create(team_home_id: montpellier.id, team_away_id: marseille.id, matchweek: mw17, date: Date.new(2023,1,2), hour: 19)
Match.create(team_home_id: rennes.id, team_away_id: nice.id, matchweek: mw17, date: Date.new(2023,1,2), hour: 21)

puts ">> Matchweek #17 created !"
puts "Creating matchweek #18 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: reims.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 19)
Match.create(team_home_id: auxerre.id, team_away_id: toulouse.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 19)
Match.create(team_home_id: clermont.id, team_away_id: rennes.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 19)
Match.create(team_home_id: nantes.id, team_away_id: lyon.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 19)
Match.create(team_home_id: brest.id, team_away_id: lille.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 19)
Match.create(team_home_id: troyes.id, team_away_id: marseille.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 21)
Match.create(team_home_id: nice.id, team_away_id: montpellier.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 21)
Match.create(team_home_id: paris.id, team_away_id: angers.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 21)
Match.create(team_home_id: strasbourg.id, team_away_id: lens.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 21)
Match.create(team_home_id: lorient.id, team_away_id: monaco.id, matchweek: mw18, date: Date.new(2023,1,11), hour: 21)

puts ">> Matchweek #18 created !"
puts "Creating matchweek #19 matches..."

Match.create(team_home_id: lens.id, team_away_id: auxerre.id, matchweek: mw19, date: Date.new(2023,1,14), hour: 17)
Match.create(team_home_id: marseille.id, team_away_id: lorient.id, matchweek: mw19, date: Date.new(2023,1,14), hour: 19)
Match.create(team_home_id: lyon.id, team_away_id: strasbourg.id, matchweek: mw19, date: Date.new(2023,1,14), hour: 21)
Match.create(team_home_id: lille.id, team_away_id: troyes.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 13)
Match.create(team_home_id: montpellier.id, team_away_id: nantes.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: clermont.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: nice.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: brest.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 15)
Match.create(team_home_id: monaco.id, team_away_id: ajaccio.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 17)
Match.create(team_home_id: rennes.id, team_away_id: paris.id, matchweek: mw19, date: Date.new(2023,1,15), hour: 21)

puts ">> Matchweek #19 created !"
puts "Creating matchweek #20 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: lyon.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: montpellier.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: nantes.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: rennes.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: lille.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: monaco.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: reims.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: toulouse.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: angers.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: lens.id, matchweek: mw20, date: Date.new(2023,1,29), hour: 15)

puts ">> Matchweek #20 created !"
puts "Creating matchweek #21 matches..."

Match.create(team_home_id: monaco.id, team_away_id: auxerre.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: angers.id, team_away_id: ajaccio.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: nantes.id, team_away_id: marseille.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: lille.id, team_away_id: clermont.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: montpellier.id, team_away_id: paris.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: lyon.id, team_away_id: brest.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: lens.id, team_away_id: nice.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: rennes.id, team_away_id: strasbourg.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: reims.id, team_away_id: lorient.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)
Match.create(team_home_id: toulouse.id, team_away_id: troyes.id, matchweek: mw21, date: Date.new(2023,2,1), hour: 20)

puts ">> Matchweek #21 created !"
puts "Creating matchweek #22 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: nantes.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: reims.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: monaco.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: angers.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: toulouse.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: montpellier.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: lens.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: lille.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: lyon.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: nice.id, matchweek: mw22, date: Date.new(2023,2,5), hour: 21)

puts ">> Matchweek #22 created !"
puts "Creating matchweek #23 matches..."

Match.create(team_home_id: monaco.id, team_away_id: paris.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: auxerre.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: marseille.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: lorient.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: strasbourg.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: montpellier.id, team_away_id: brest.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: ajaccio.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: lens.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: troyes.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: rennes.id, matchweek: mw23, date: Date.new(2023,2,12), hour: 15)

puts ">> Matchweek #23 created !"
puts "Creating matchweek #24 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: lyon.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: ajaccio.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: reims.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: lille.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: nantes.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: angers.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: monaco.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: clermont.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: marseille.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: montpellier.id, matchweek: mw24, date: Date.new(2023,2,19), hour: 15)

puts ">> Matchweek #24 created !"
puts "Creating matchweek #25 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: troyes.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: monaco.id, team_away_id: nice.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: lyon.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: strasbourg.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: auxerre.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: rennes.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: brest.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: montpellier.id, team_away_id: lens.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: toulouse.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: paris.id, matchweek: mw25, date: Date.new(2023,2,26), hour: 21)

puts ">> Matchweek #25 created !"
puts "Creating matchweek #26 matches..."

Match.create(team_home_id: montpellier.id, team_away_id: angers.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: auxerre.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: lorient.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: nantes.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: lille.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: brest.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: marseille.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: ajaccio.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: clermont.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: monaco.id, matchweek: mw26, date: Date.new(2023,3,5), hour: 15)

puts ">> Matchweek #26 created !"
puts "Creating matchweek #27 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: montpellier.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: rennes.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: monaco.id, team_away_id: reims.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: toulouse.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: lens.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: troyes.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: nice.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: lyon.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: strasbourg.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: paris.id, matchweek: mw27, date: Date.new(2023,3,12), hour: 15)

puts ">> Matchweek #27 created !"
puts "Creating matchweek #28 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: monaco.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: montpellier.id, team_away_id: clermont.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: lorient.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: nantes.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: rennes.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: angers.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: auxerre.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: marseille.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: lille.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: brest.id, matchweek: mw28, date: Date.new(2023,3,19), hour: 15)

puts ">> Matchweek #28 created !"
puts "Creating matchweek #29 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: troyes.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: monaco.id, team_away_id: strasbourg.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: nice.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: ajaccio.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: reims.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: lorient.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: montpellier.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: toulouse.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: lens.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: lyon.id, matchweek: mw29, date: Date.new(2023,4,2), hour: 21)

puts ">> Matchweek #29 created !"
puts "Creating matchweek #30 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: auxerre.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: lille.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: marseille.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: monaco.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: montpellier.id, team_away_id: toulouse.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: paris.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: rennes.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: strasbourg.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: brest.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: clermont.id, matchweek: mw30, date: Date.new(2023,4,9), hour: 15)

puts ">> Matchweek #30 created !"
puts "Creating matchweek #31 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: nantes.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: monaco.id, team_away_id: lorient.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: angers.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: montpellier.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: troyes.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: lens.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: ajaccio.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: nice.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: reims.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: lyon.id, matchweek: mw31, date: Date.new(2023,4,16), hour: 15)

puts ">> Matchweek #31 created !"
puts "Creating matchweek #32 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: brest.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: lille.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: paris.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: toulouse.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: troyes.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: montpellier.id, team_away_id: rennes.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: clermont.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: monaco.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: strasbourg.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: marseille.id, matchweek: mw32, date: Date.new(2023,4,23), hour: 21)

puts ">> Matchweek #32 created !"
puts "Creating matchweek #33 matches..."

Match.create(team_home_id: monaco.id, team_away_id: montpellier.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: reims.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: ajaccio.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: auxerre.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: lorient.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: lyon.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: nantes.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: angers.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: lens.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: nice.id, matchweek: mw33, date: Date.new(2023,4,30), hour: 15)

puts ">> Matchweek #33 created !"
puts "Creating matchweek #34 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: toulouse.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: clermont.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: angers.id, team_away_id: monaco.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: brest.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: strasbourg.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: rennes.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: montpellier.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: marseille.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: lille.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: paris.id, matchweek: mw34, date: Date.new(2023,5,7), hour: 15)

puts ">> Matchweek #34 created !"
puts "Creating matchweek #35 matches..."

Match.create(team_home_id: monaco.id, team_away_id: lille.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: clermont.id, team_away_id: lyon.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: montpellier.id, team_away_id: lorient.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: marseille.id, team_away_id: angers.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: paris.id, team_away_id: ajaccio.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: lens.id, team_away_id: reims.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: strasbourg.id, team_away_id: nice.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: auxerre.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: rennes.id, team_away_id: troyes.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)
Match.create(team_home_id: toulouse.id, team_away_id: nantes.id, matchweek: mw35, date: Date.new(2023,5,14), hour: 15)

puts ">> Matchweek #35 created !"
puts "Creating matchweek #36 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: rennes.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: auxerre.id, team_away_id: paris.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: lorient.id, team_away_id: lens.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: nantes.id, team_away_id: montpellier.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: lille.id, team_away_id: marseille.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: nice.id, team_away_id: toulouse.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: lyon.id, team_away_id: monaco.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: brest.id, team_away_id: clermont.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: reims.id, team_away_id: angers.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)
Match.create(team_home_id: troyes.id, team_away_id: strasbourg.id, matchweek: mw36, date: Date.new(2023,5,21), hour: 15)

puts ">> Matchweek #36 created !"
puts "Creating matchweek #37 matches..."

Match.create(team_home_id: angers.id, team_away_id: troyes.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: clermont.id, team_away_id: lorient.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: lille.id, team_away_id: nantes.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: montpellier.id, team_away_id: nice.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: lyon.id, team_away_id: reims.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: marseille.id, team_away_id: brest.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: lens.id, team_away_id: ajaccio.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: strasbourg.id, team_away_id: paris.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: rennes.id, team_away_id: monaco.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)
Match.create(team_home_id: toulouse.id, team_away_id: auxerre.id, matchweek: mw37, date: Date.new(2023,5,27), hour: 21)

puts ">> Matchweek #37 created !"
puts "Creating matchweek #38 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: marseille.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: auxerre.id, team_away_id: lens.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: monaco.id, team_away_id: toulouse.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: lorient.id, team_away_id: strasbourg.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: nantes.id, team_away_id: angers.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: nice.id, team_away_id: lyon.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: paris.id, team_away_id: clermont.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: brest.id, team_away_id: rennes.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: reims.id, team_away_id: montpellier.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)
Match.create(team_home_id: troyes.id, team_away_id: lille.id, matchweek: mw38, date: Date.new(2023,6,3), hour: 21)

puts "Calculating Teams ranking"

paris.calculate_score
paris.save!
lens.calculate_score
lens.save!
rennes.calculate_score
rennes.save!
marseille.calculate_score
marseille.save!
lorient.calculate_score
lorient.save!
monaco.calculate_score
monaco.save!
lille.calculate_score
lille.save!
lyon.calculate_score
lyon.save!
nice.calculate_score
nice.save!
clermont.calculate_score
clermont.save!
reims.calculate_score
reims.save!
toulouse.calculate_score
toulouse.save!
troyes.calculate_score
troyes.save!
montpellier.calculate_score
montpellier.save!
nantes.calculate_score
nantes.save!
brest.calculate_score
brest.save!
auxerre.calculate_score
auxerre.save!
ajaccio.calculate_score
ajaccio.save!
strasbourg.calculate_score
strasbourg.save!
angers.calculate_score
angers.save!

puts ">> Team ranking calculated !"

puts "Creating Premier League..."

premierleague = League.create(name: 'Premier League', season_id:season.id)
arsenal = Team.new(name: 'Arsenal', league_id: premierleague.id)
arsenal.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'arsenal.png')), filename: 'arsenal.png', content_type: 'arsenal.png')
arsenal.save!
mancity = Team.new(name: 'Man City', league_id: premierleague.id)
mancity.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'mancity.png')), filename: 'mancity.png', content_type: 'mancity.png')
mancity.save!
newcastle = Team.new(name: 'Newcastle', league_id: premierleague.id)
newcastle.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'newcastle.png')), filename: 'newcastle.png', content_type: 'newcastle.png')
newcastle.save!
tottenham = Team.new(name: 'Tottenham', league_id: premierleague.id)
tottenham.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'tottenham.png')), filename: 'tottenham.png', content_type: 'tottenham.png')
tottenham.save!
manunited = Team.new(name: 'Man United', league_id: premierleague.id)
manunited.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'manunited.png')), filename: 'manunited.png', content_type: 'manunited.png')
manunited.save!
liverpool = Team.new(name: 'Liverpool', league_id: premierleague.id)
liverpool.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'liverpool.png')), filename: 'liverpool.png', content_type: 'liverpool.png')
liverpool.save!
brighton = Team.new(name: 'Brighton', league_id: premierleague.id)
brighton.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'brighton.png')), filename: 'brighton.png', content_type: 'brighton.png')
brighton.save!
chelsea = Team.new(name: 'Chelsea', league_id: premierleague.id)
chelsea.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'chelsea.png')), filename: 'chelsea.png', content_type: 'chelsea.png')
chelsea.save!
brentford = Team.new(name: 'Brentford', league_id: premierleague.id)
brentford.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'brentford.png')), filename: 'brentford.png', content_type: 'brentford.png')
brentford.save!
fulham = Team.new(name: 'Fulham', league_id: premierleague.id)
fulham.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'fulham.png')), filename: 'fulham.png', content_type: 'fulham.png')
fulham.save!
crystalpalace = Team.new(name: 'Crystal Palace', league_id: premierleague.id)
crystalpalace.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'crystalpalace.png')), filename: 'crystalpalace.png', content_type: 'crystalpalace.png')
crystalpalace.save!
astonvilla = Team.new(name: 'Aston Villa', league_id: premierleague.id)
astonvilla.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'astonvilla.png')), filename: 'astonvilla.png', content_type: 'astonvilla.png')
astonvilla.save!
leicester = Team.new(name: 'Leicester', league_id: premierleague.id)
leicester.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'leicester.png')), filename: 'leicester.png', content_type: 'leicester.png')
leicester.save!
bournemouth = Team.new(name: 'Bournemouth', league_id: premierleague.id)
bournemouth.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'bournemouth.png')), filename: 'bournemouth.png', content_type: 'bournemouth.png')
bournemouth.save!
leeds = Team.new(name: 'Leeds', league_id: premierleague.id)
leeds.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'leeds.png')), filename: 'leeds.png', content_type: 'leeds.png')
leeds.save!
westham = Team.new(name: 'Westham', league_id: premierleague.id)
westham.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'westham.png')), filename: 'westham.png', content_type: 'westham.png')
westham.save!
everton = Team.new(name: 'Everton', league_id: premierleague.id)
everton.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'everton.png')), filename: 'everton.png', content_type: 'everton.png')
everton.save!
nforest = Team.new(name: 'Nottingham F.', league_id: premierleague.id)
nforest.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'nforest.png')), filename: 'nforest.png', content_type: 'nforest.png')
nforest.save!
southampton = Team.new(name: 'Southampton', league_id: premierleague.id)
southampton.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'southampton.png')), filename: 'southampton.png', content_type: 'southampton.png')
southampton.save!
wolverhampton = Team.new(name: 'Wolverhampton', league_id: premierleague.id)
wolverhampton.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'teams', 'wolverhampton.png')), filename: 'wolverhampton.png', content_type: 'wolverhampton.png')
wolverhampton.save!
puts ">> Premier League Ready !"

puts "Creating matchweeks..."

mw1 = Matchweek.create(number: 1, league_id: premierleague.id)
mw2 = Matchweek.create(number: 2, league_id: premierleague.id)
mw3 = Matchweek.create(number: 3, league_id: premierleague.id)
mw4 = Matchweek.create(number: 4, league_id: premierleague.id)
mw5 = Matchweek.create(number: 5, league_id: premierleague.id)
mw6 = Matchweek.create(number: 6, league_id: premierleague.id)
mw7 = Matchweek.create(number: 7, league_id: premierleague.id)
mw8 = Matchweek.create(number: 8, league_id: premierleague.id)
mw9 = Matchweek.create(number: 9, league_id: premierleague.id)
mw10 = Matchweek.create(number: 10, league_id: premierleague.id)
mw11 = Matchweek.create(number: 11, league_id: premierleague.id)
mw12 = Matchweek.create(number: 12, league_id: premierleague.id)
mw13 = Matchweek.create(number: 13, league_id: premierleague.id)
mw14 = Matchweek.create(number: 14, league_id: premierleague.id)
mw15 = Matchweek.create(number: 15, league_id: premierleague.id)
mw16 = Matchweek.create(number: 16, league_id: premierleague.id)
mw17 = Matchweek.create(number: 17, league_id: premierleague.id)
mw18 = Matchweek.create(number: 18, league_id: premierleague.id)
mw19 = Matchweek.create(number: 19, league_id: premierleague.id)
mw20 = Matchweek.create(number: 20, league_id: premierleague.id)
mw21 = Matchweek.create(number: 21, league_id: premierleague.id)
mw22 = Matchweek.create(number: 22, league_id: premierleague.id)
mw23 = Matchweek.create(number: 23, league_id: premierleague.id)
mw24 = Matchweek.create(number: 24, league_id: premierleague.id)
mw25 = Matchweek.create(number: 25, league_id: premierleague.id)
mw26 = Matchweek.create(number: 26, league_id: premierleague.id)
mw27 = Matchweek.create(number: 27, league_id: premierleague.id)
mw28 = Matchweek.create(number: 28, league_id: premierleague.id)
mw29 = Matchweek.create(number: 29, league_id: premierleague.id)
mw30 = Matchweek.create(number: 30, league_id: premierleague.id)
mw31 = Matchweek.create(number: 31, league_id: premierleague.id)
mw32 = Matchweek.create(number: 32, league_id: premierleague.id)
mw33 = Matchweek.create(number: 33, league_id: premierleague.id)
mw34 = Matchweek.create(number: 34, league_id: premierleague.id)
mw35 = Matchweek.create(number: 35, league_id: premierleague.id)
mw36 = Matchweek.create(number: 36, league_id: premierleague.id)
mw37 = Matchweek.create(number: 37, league_id: premierleague.id)
mw38 = Matchweek.create(number: 38, league_id: premierleague.id)

puts ">> 38 matchweeks created !"

puts "Creating matchweek #1 matches..."

Match.create(team_home_id: crystalpalace.id, team_away_id: arsenal.id, matchweek: mw1, date: Date.new(2022,8,5), played: true, result: "0 2")
Match.create(team_home_id: fulham.id, team_away_id: liverpool.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "2 2")
Match.create(team_home_id: bournemouth.id, team_away_id: astonvilla.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "2 0")
Match.create(team_home_id: leeds.id, team_away_id: wolverhampton.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "2 1")
Match.create(team_home_id: newcastle.id, team_away_id: nforest.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "2 0")
Match.create(team_home_id: tottenham.id, team_away_id: southampton.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "4 1")
Match.create(team_home_id: everton.id, team_away_id: chelsea.id, matchweek: mw1, date: Date.new(2022,8,6), played: true, result: "0 1")
Match.create(team_home_id: manunited.id, team_away_id: brighton.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "1 2")
Match.create(team_home_id: leicester.id, team_away_id: brentford.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "2 2")
Match.create(team_home_id: westham.id, team_away_id: mancity.id, matchweek: mw1, date: Date.new(2022,8,7), played: true, result: "0 2")

puts ">> Matchweek #1 created !"
puts "Creating matchweek #2 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: everton.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "2 1")
Match.create(team_home_id: brighton.id, team_away_id: newcastle.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "0 0")
Match.create(team_home_id: mancity.id, team_away_id: bournemouth.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "4 0")
Match.create(team_home_id: arsenal.id, team_away_id: leicester.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "4 2")
Match.create(team_home_id: southampton.id, team_away_id: leeds.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "2 2")
Match.create(team_home_id: wolverhampton.id, team_away_id: fulham.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "0 0")
Match.create(team_home_id: brentford.id, team_away_id: manunited.id, matchweek: mw2, date: Date.new(2022,8,13), played: true, result: "4 0")
Match.create(team_home_id: nforest.id, team_away_id: westham.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "1 0")
Match.create(team_home_id: chelsea.id, team_away_id: tottenham.id, matchweek: mw2, date: Date.new(2022,8,14), played: true, result: "2 2")
Match.create(team_home_id: liverpool.id, team_away_id: crystalpalace.id, matchweek: mw2, date: Date.new(2022,8,15), played: true, result: "1 1")

puts ">> Matchweek #2 created !"
puts "Creating matchweek #3 matches..."

Match.create(team_home_id: tottenham.id, team_away_id: wolverhampton.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "1 0")
Match.create(team_home_id: fulham.id, team_away_id: brentford.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "3 2")
Match.create(team_home_id: crystalpalace.id, team_away_id: astonvilla.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "3 1")
Match.create(team_home_id: everton.id, team_away_id: nforest.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "1 1")
Match.create(team_home_id: leicester.id, team_away_id: southampton.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "1 2")
Match.create(team_home_id: bournemouth.id, team_away_id: arsenal.id, matchweek: mw3, date: Date.new(2022,8,20), played: true, result: "0 3")
Match.create(team_home_id: leeds.id, team_away_id: chelsea.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "3 0")
Match.create(team_home_id: westham.id, team_away_id: brighton.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "0 2")
Match.create(team_home_id: newcastle.id, team_away_id: mancity.id, matchweek: mw3, date: Date.new(2022,8,21), played: true, result: "3 3")
Match.create(team_home_id: manunited.id, team_away_id: liverpool.id, matchweek: mw3, date: Date.new(2022,8,22), played: true, result: "2 1")

puts ">> Matchweek #3 created !"
puts "Creating matchweek #4 matches..."

Match.create(team_home_id: southampton.id, team_away_id: manunited.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "0 1")
Match.create(team_home_id: mancity.id, team_away_id: crystalpalace.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "4 2")
Match.create(team_home_id: brighton.id, team_away_id: leeds.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "1 0")
Match.create(team_home_id: brentford.id, team_away_id: everton.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "1 1")
Match.create(team_home_id: chelsea.id, team_away_id: leicester.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "2 1")
Match.create(team_home_id: liverpool.id, team_away_id: bournemouth.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "9 0")
Match.create(team_home_id: arsenal.id, team_away_id: fulham.id, matchweek: mw4, date: Date.new(2022,8,27), played: true, result: "2 1")
Match.create(team_home_id: wolverhampton.id, team_away_id: newcastle.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "1 1")
Match.create(team_home_id: astonvilla.id, team_away_id: westham.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "0 1")
Match.create(team_home_id: nforest.id, team_away_id: tottenham.id, matchweek: mw4, date: Date.new(2022,8,28), played: true, result: "0 2")

puts ">> Matchweek #4 created !"
puts "Creating matchweek #5 matches..."

Match.create(team_home_id: fulham.id, team_away_id: brighton.id, matchweek: mw5, date: Date.new(2022,8,30), played: true, result: "2 1")
Match.create(team_home_id: crystalpalace.id, team_away_id: brentford.id, matchweek: mw5, date: Date.new(2022,8,30), played: true, result: "1 1")
Match.create(team_home_id: southampton.id, team_away_id: chelsea.id, matchweek: mw5, date: Date.new(2022,8,30), played: true, result: "2 1")
Match.create(team_home_id: leeds.id, team_away_id: everton.id, matchweek: mw5, date: Date.new(2022,8,30), played: true, result: "1 1")
Match.create(team_home_id: arsenal.id, team_away_id: astonvilla.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "2 1")
Match.create(team_home_id: mancity.id, team_away_id: nforest.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "6 0")
Match.create(team_home_id: bournemouth.id, team_away_id: wolverhampton.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "0 0")
Match.create(team_home_id: westham.id, team_away_id: tottenham.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "1 1")
Match.create(team_home_id: liverpool.id, team_away_id: newcastle.id, matchweek: mw5, date: Date.new(2022,8,31), played: true, result: "2 1")
Match.create(team_home_id: leicester.id, team_away_id: manunited.id, matchweek: mw5, date: Date.new(2022,9,1), played: true, result: "0 1")

puts ">> Matchweek #5 created !"
puts "Creating matchweek #6 matches..."

Match.create(team_home_id: everton.id, team_away_id: liverpool.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "0 0")
Match.create(team_home_id: tottenham.id, team_away_id: fulham.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "2 1")
Match.create(team_home_id: brentford.id, team_away_id: leeds.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "5 2")
Match.create(team_home_id: wolverhampton.id, team_away_id: southampton.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "1 0")
Match.create(team_home_id: chelsea.id, team_away_id: westham.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "2 1")
Match.create(team_home_id: newcastle.id, team_away_id: crystalpalace.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "0 0")
Match.create(team_home_id: nforest.id, team_away_id: bournemouth.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "2 3")
Match.create(team_home_id: astonvilla.id, team_away_id: mancity.id, matchweek: mw6, date: Date.new(2022,9,3), played: true, result: "1 1")
Match.create(team_home_id: brighton.id, team_away_id: leicester.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "5 2")
Match.create(team_home_id: manunited.id, team_away_id: arsenal.id, matchweek: mw6, date: Date.new(2022,9,4), played: true, result: "3 1")

puts ">> Matchweek #6 created !"
puts "Creating matchweek #7 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: brighton.id, matchweek: mw7, date: Date.new(2023,9,10), played: false, result: "")
Match.create(team_home_id: southampton.id, team_away_id: brentford.id, matchweek: mw7, date: Date.new(2023,9,10), played: false, result: "")
Match.create(team_home_id: leicester.id, team_away_id: astonvilla.id, matchweek: mw7, date: Date.new(2023,9,10), played: false, result: "")
Match.create(team_home_id: fulham.id, team_away_id: chelsea.id, matchweek: mw7, date: Date.new(2023,9,10), played: false, result: "")
Match.create(team_home_id: liverpool.id, team_away_id: wolverhampton.id, matchweek: mw7, date: Date.new(2023,9,10), played: false, result: "")
Match.create(team_home_id: mancity.id, team_away_id: tottenham.id, matchweek: mw7, date: Date.new(2023,9,10), played: false, result: "")
Match.create(team_home_id: westham.id, team_away_id: newcastle.id, matchweek: mw7, date: Date.new(2023,9,11), played: false, result: "")
Match.create(team_home_id: arsenal.id, team_away_id: everton.id, matchweek: mw7, date: Date.new(2023,9,11), played: false, result: "")
Match.create(team_home_id: crystalpalace.id, team_away_id: manunited.id, matchweek: mw7, date: Date.new(2023,9,11), played: false, result: "")
Match.create(team_home_id: leeds.id, team_away_id: nforest.id, matchweek: mw7, date: Date.new(2023,9,12), played: false, result: "")

puts ">> Matchweek #7 created !"
puts "Creating matchweek #8 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: southampton.id, matchweek: mw8, date: Date.new(2022,9,16), played: true, result: "1 0")
Match.create(team_home_id: nforest.id, team_away_id: fulham.id, matchweek: mw8, date: Date.new(2022,9,16), played: true, result: "2 3")
Match.create(team_home_id: wolverhampton.id, team_away_id: mancity.id, matchweek: mw8, date: Date.new(2022,9,17), played: true, result: "0 3")
Match.create(team_home_id: newcastle.id, team_away_id: bournemouth.id, matchweek: mw8, date: Date.new(2022,9,17), played: true, result: "1 1")
Match.create(team_home_id: brighton.id, team_away_id: crystalpalace.id, matchweek: mw8, date: Date.new(2023,9,17), played: false, result: "")
Match.create(team_home_id: tottenham.id, team_away_id: leicester.id, matchweek: mw8, date: Date.new(2022,9,17), played: true, result: "6 2")
Match.create(team_home_id: brentford.id, team_away_id: arsenal.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "0 3")
Match.create(team_home_id: manunited.id, team_away_id: leeds.id, matchweek: mw8, date: Date.new(2023,9,18), played: false, result: "")
Match.create(team_home_id: everton.id, team_away_id: westham.id, matchweek: mw8, date: Date.new(2022,9,18), played: true, result: "1 0")
Match.create(team_home_id: chelsea.id, team_away_id: liverpool.id, matchweek: mw8, date: Date.new(2023,9,18), played: false, result: "")

puts ">> Matchweek #8 created !"
puts "Creating matchweek #9 matches..."

Match.create(team_home_id: arsenal.id, team_away_id: tottenham.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "3 1")
Match.create(team_home_id: liverpool.id, team_away_id: brighton.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "3 3")
Match.create(team_home_id: fulham.id, team_away_id: newcastle.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "1 4")
Match.create(team_home_id: crystalpalace.id, team_away_id: chelsea.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "1 2")
Match.create(team_home_id: bournemouth.id, team_away_id: brentford.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "0 0")
Match.create(team_home_id: southampton.id, team_away_id: everton.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "1 2")
Match.create(team_home_id: westham.id, team_away_id: wolverhampton.id, matchweek: mw9, date: Date.new(2022,10,1), played: true, result: "2 0")
Match.create(team_home_id: mancity.id, team_away_id: manunited.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "6 3")
Match.create(team_home_id: leeds.id, team_away_id: astonvilla.id, matchweek: mw9, date: Date.new(2022,10,2), played: true, result: "0 0")
Match.create(team_home_id: leicester.id, team_away_id: nforest.id, matchweek: mw9, date: Date.new(2022,10,3), played: true, result: "4 0")

puts ">> Matchweek #9 created !"
puts "Creating matchweek #10 matches..."

Match.create(team_home_id: mancity.id, team_away_id: southampton.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "4 0")
Match.create(team_home_id: chelsea.id, team_away_id: wolverhampton.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "3 0")
Match.create(team_home_id: newcastle.id, team_away_id: brentford.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "5 1")
Match.create(team_home_id: bournemouth.id, team_away_id: leicester.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "2 1")
Match.create(team_home_id: brighton.id, team_away_id: tottenham.id, matchweek: mw10, date: Date.new(2022,10,8), played: true, result: "0 1")
Match.create(team_home_id: westham.id, team_away_id: fulham.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "3 1")
Match.create(team_home_id: crystalpalace.id, team_away_id: leeds.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "2 1")
Match.create(team_home_id: arsenal.id, team_away_id: liverpool.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "3 2")
Match.create(team_home_id: everton.id, team_away_id: manunited.id, matchweek: mw10, date: Date.new(2022,10,9), played: true, result: "1 2")
Match.create(team_home_id: nforest.id, team_away_id: astonvilla.id, matchweek: mw10, date: Date.new(2022,10,10), played: true, result: "1 1")

puts ">> Matchweek #10 created !"
puts "Creating matchweek #11 matches..."

Match.create(team_home_id: brentford.id, team_away_id: brighton.id, matchweek: mw11, date: Date.new(2022,10,14), played: true, result: "2 0")
Match.create(team_home_id: leicester.id, team_away_id: crystalpalace.id, matchweek: mw11, date: Date.new(2022,10,15), played: true, result: "0 0")
Match.create(team_home_id: fulham.id, team_away_id: bournemouth.id, matchweek: mw11, date: Date.new(2022,10,15), played: true, result: "2 2")
Match.create(team_home_id: wolverhampton.id, team_away_id: nforest.id, matchweek: mw11, date: Date.new(2022,10,15), played: true, result: "1 0")
Match.create(team_home_id: tottenham.id, team_away_id: everton.id, matchweek: mw11, date: Date.new(2022,10,15), played: true, result: "2 0")
Match.create(team_home_id: leeds.id, team_away_id: arsenal.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "0 1")
Match.create(team_home_id: astonvilla.id, team_away_id: chelsea.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "0 2")
Match.create(team_home_id: manunited.id, team_away_id: newcastle.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "0 0")
Match.create(team_home_id: southampton.id, team_away_id: westham.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "1 1")
Match.create(team_home_id: liverpool.id, team_away_id: mancity.id, matchweek: mw11, date: Date.new(2022,10,16), played: true, result: "1 0")

puts ">> Matchweek #11 created !"
puts "Creating matchweek #12 matches..."

Match.create(team_home_id: brighton.id, team_away_id: nforest.id, matchweek: mw12, date: Date.new(2022,10,18), played: true, result: "0 0")
Match.create(team_home_id: crystalpalace.id, team_away_id: wolverhampton.id, matchweek: mw12, date: Date.new(2022,10,18), played: true, result: "2 1")
Match.create(team_home_id: arsenal.id, team_away_id: mancity.id, matchweek: mw12, date: Date.new(2023,10,19), played: false, result: "")
Match.create(team_home_id: brentford.id, team_away_id: chelsea.id, matchweek: mw12, date: Date.new(2022,10,19), played: true, result: "0 0")
Match.create(team_home_id: newcastle.id, team_away_id: everton.id, matchweek: mw12, date: Date.new(2022,10,19), played: true, result: "1 0")
Match.create(team_home_id: liverpool.id, team_away_id: westham.id, matchweek: mw12, date: Date.new(2022,10,19), played: true, result: "1 0")
Match.create(team_home_id: bournemouth.id, team_away_id: southampton.id, matchweek: mw12, date: Date.new(2022,10,19), played: true, result: "0 1")
Match.create(team_home_id: manunited.id, team_away_id: tottenham.id, matchweek: mw12, date: Date.new(2022,10,19), played: true, result: "2 0")
Match.create(team_home_id: fulham.id, team_away_id: astonvilla.id, matchweek: mw12, date: Date.new(2022,10,20), played: true, result: "3 0")
Match.create(team_home_id: leicester.id, team_away_id: leeds.id, matchweek: mw12, date: Date.new(2022,10,20), played: true, result: "2 0")

puts ">> Matchweek #12 created !"
puts "Creating matchweek #13 matches..."

Match.create(team_home_id: nforest.id, team_away_id: liverpool.id, matchweek: mw13, date: Date.new(2022,10,22), played: true, result: "1 0")
Match.create(team_home_id: mancity.id, team_away_id: brighton.id, matchweek: mw13, date: Date.new(2022,10,22), played: true, result: "3 1")
Match.create(team_home_id: everton.id, team_away_id: crystalpalace.id, matchweek: mw13, date: Date.new(2022,10,22), played: true, result: "3 0")
Match.create(team_home_id: chelsea.id, team_away_id: manunited.id, matchweek: mw13, date: Date.new(2022,10,22), played: true, result: "1 1")
Match.create(team_home_id: southampton.id, team_away_id: arsenal.id, matchweek: mw13, date: Date.new(2022,10,23), played: true, result: "1 1")
Match.create(team_home_id: leeds.id, team_away_id: fulham.id, matchweek: mw13, date: Date.new(2022,10,23), played: true, result: "2 3")
Match.create(team_home_id: astonvilla.id, team_away_id: brentford.id, matchweek: mw13, date: Date.new(2022,10,23), played: true, result: "4 0")
Match.create(team_home_id: wolverhampton.id, team_away_id: leicester.id, matchweek: mw13, date: Date.new(2022,10,23), played: true, result: "0 4")
Match.create(team_home_id: tottenham.id, team_away_id: newcastle.id, matchweek: mw13, date: Date.new(2022,10,23), played: true, result: "1 2")
Match.create(team_home_id: westham.id, team_away_id: bournemouth.id, matchweek: mw13, date: Date.new(2022,10,24), played: true, result: "2 0")

puts ">> Matchweek #13 created !"
puts "Creating matchweek #14 matches..."

Match.create(team_home_id: leicester.id, team_away_id: mancity.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "0 1")
Match.create(team_home_id: bournemouth.id, team_away_id: tottenham.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "2 3")
Match.create(team_home_id: newcastle.id, team_away_id: astonvilla.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "4 0")
Match.create(team_home_id: brighton.id, team_away_id: chelsea.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "4 1")
Match.create(team_home_id: brentford.id, team_away_id: wolverhampton.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "1 1")
Match.create(team_home_id: crystalpalace.id, team_away_id: southampton.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "1 0")
Match.create(team_home_id: fulham.id, team_away_id: everton.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "0 0")
Match.create(team_home_id: liverpool.id, team_away_id: leeds.id, matchweek: mw14, date: Date.new(2022,10,29), played: true, result: "1 2")
Match.create(team_home_id: arsenal.id, team_away_id: nforest.id, matchweek: mw14, date: Date.new(2022,10,30), played: true, result: "5 0")
Match.create(team_home_id: manunited.id, team_away_id: westham.id, matchweek: mw14, date: Date.new(2022,10,30), played: true, result: "1 0")

puts ">> Matchweek #14 created !"
puts "Creating matchweek #15 matches..."

Match.create(team_home_id: mancity.id, team_away_id: fulham.id, matchweek: mw15, date: Date.new(2022,11,5), played: true, result: "2 1")
Match.create(team_home_id: wolverhampton.id, team_away_id: brighton.id, matchweek: mw15, date: Date.new(2022,11,5), played: true, result: "2 3")
Match.create(team_home_id: nforest.id, team_away_id: brentford.id, matchweek: mw15, date: Date.new(2022,11,5), played: true, result: "2 2")
Match.create(team_home_id: leeds.id, team_away_id: bournemouth.id, matchweek: mw15, date: Date.new(2022,11,5), played: true, result: "4 3")
Match.create(team_home_id: everton.id, team_away_id: leicester.id, matchweek: mw15, date: Date.new(2022,11,5), played: true, result: "0 2")
Match.create(team_home_id: chelsea.id, team_away_id: arsenal.id, matchweek: mw15, date: Date.new(2022,11,6), played: true, result: "0 1")
Match.create(team_home_id: southampton.id, team_away_id: newcastle.id, matchweek: mw15, date: Date.new(2022,11,6), played: true, result: "1 4")
Match.create(team_home_id: astonvilla.id, team_away_id: manunited.id, matchweek: mw15, date: Date.new(2022,11,6), played: true, result: "3 1")
Match.create(team_home_id: westham.id, team_away_id: crystalpalace.id, matchweek: mw15, date: Date.new(2022,11,6), played: true, result: "1 2")
Match.create(team_home_id: tottenham.id, team_away_id: liverpool.id, matchweek: mw15, date: Date.new(2022,11,6), played: true, result: "1 2")

puts ">> Matchweek #15 created !"
puts "Creating matchweek #16 matches..."

Match.create(team_home_id: mancity.id, team_away_id: brentford.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "1 2")
Match.create(team_home_id: tottenham.id, team_away_id: leeds.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "4 3")
Match.create(team_home_id: liverpool.id, team_away_id: southampton.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "3 1")
Match.create(team_home_id: nforest.id, team_away_id: crystalpalace.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "1 0")
Match.create(team_home_id: westham.id, team_away_id: leicester.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "0 2")
Match.create(team_home_id: bournemouth.id, team_away_id: everton.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "3 0")
Match.create(team_home_id: newcastle.id, team_away_id: chelsea.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "1 0")
Match.create(team_home_id: wolverhampton.id, team_away_id: arsenal.id, matchweek: mw16, date: Date.new(2022,11,12), played: true, result: "0 2")
Match.create(team_home_id: brighton.id, team_away_id: astonvilla.id, matchweek: mw16, date: Date.new(2022,11,13), played: true, result: "1 2")
Match.create(team_home_id: fulham.id, team_away_id: manunited.id, matchweek: mw16, date: Date.new(2022,11,13), played: true, result: "1 2")

puts ">> Matchweek #16 created !"
puts "Creating matchweek #17 matches..."

Match.create(team_home_id: brentford.id, team_away_id: tottenham.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "2 2")
Match.create(team_home_id: leicester.id, team_away_id: newcastle.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "0 3")
Match.create(team_home_id: southampton.id, team_away_id: brighton.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "1 3")
Match.create(team_home_id: crystalpalace.id, team_away_id: fulham.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "0 3")
Match.create(team_home_id: everton.id, team_away_id: wolverhampton.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "1 2")
Match.create(team_home_id: astonvilla.id, team_away_id: liverpool.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "1 3")
Match.create(team_home_id: arsenal.id, team_away_id: westham.id, matchweek: mw17, date: Date.new(2022,12,26), played: true, result: "3 1")
Match.create(team_home_id: chelsea.id, team_away_id: bournemouth.id, matchweek: mw17, date: Date.new(2022,12,27), hour: 19)
Match.create(team_home_id: manunited.id, team_away_id: nforest.id, matchweek: mw17, date: Date.new(2022,12,27), hour: 21)
Match.create(team_home_id: leeds.id, team_away_id: mancity.id, matchweek: mw17, date: Date.new(2022,12,28), hour: 21)

puts ">> Matchweek #17 created !"
puts "Creating matchweek #18 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: crystalpalace.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: arsenal.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: southampton.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: leicester.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: everton.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: leeds.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: chelsea.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: astonvilla.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: brentford.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: manunited.id, matchweek: mw18, date: Date.new(2022,12,31), hour: 16)

puts ">> Matchweek #18 created !"
puts "Creating matchweek #19 matches..."

Match.create(team_home_id: arsenal.id, team_away_id: newcastle.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: astonvilla.id, team_away_id: wolverhampton.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: liverpool.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: mancity.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: tottenham.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: brighton.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: westham.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: fulham.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: bournemouth.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: nforest.id, matchweek: mw19, date: Date.new(2023,1,2), hour: 16)

puts ">> Matchweek #19 created !"
puts "Creating matchweek #20 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: leeds.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: bournemouth.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: liverpool.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: crystalpalace.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: southampton.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: mancity.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: fulham.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: leicester.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: arsenal.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: westham.id, matchweek: mw20, date: Date.new(2023,1,14), hour: 16)

puts ">> Matchweek #20 created !"
puts "Creating matchweek #21 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: nforest.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: arsenal.id, team_away_id: manunited.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: newcastle.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: tottenham.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: brentford.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: brighton.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: chelsea.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: wolverhampton.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: astonvilla.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: everton.id, matchweek: mw21, date: Date.new(2023,1,21), hour: 16)

puts ">> Matchweek #21 created !"
puts "Creating matchweek #22 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: leicester.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: southampton.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: bournemouth.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: fulham.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: arsenal.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: crystalpalace.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: westham.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: leeds.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: mancity.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: liverpool.id, matchweek: mw22, date: Date.new(2023,2,4), hour: 16)

puts ">> Matchweek #22 created !"
puts "Creating matchweek #23 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: newcastle.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: arsenal.id, team_away_id: brentford.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: brighton.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: nforest.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: manunited.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: tottenham.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: everton.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: astonvilla.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: wolverhampton.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: chelsea.id, matchweek: mw23, date: Date.new(2023,2,11), hour: 16)

puts ">> Matchweek #23 created !"
puts "Creating matchweek #24 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: arsenal.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: crystalpalace.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: fulham.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: southampton.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: leeds.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: leicester.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: liverpool.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: mancity.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: westham.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: bournemouth.id, matchweek: mw24, date: Date.new(2023,2,18), hour: 16)

puts ">> Matchweek #24 created !"
puts "Creating matchweek #25 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: mancity.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: liverpool.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: astonvilla.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: wolverhampton.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: southampton.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: arsenal.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: brentford.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: brighton.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: chelsea.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: nforest.id, matchweek: mw25, date: Date.new(2023,2,25), hour: 16)

puts ">> Matchweek #25 created !"
puts "Creating matchweek #26 matches..."

Match.create(team_home_id: arsenal.id, team_away_id: bournemouth.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: astonvilla.id, team_away_id: crystalpalace.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: fulham.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: westham.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: leeds.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: manunited.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: newcastle.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: everton.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: leicester.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: tottenham.id, matchweek: mw26, date: Date.new(2023,3,4), hour: 16)

puts ">> Matchweek #26 created !"
puts "Creating matchweek #27 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: liverpool.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: mancity.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: brentford.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: arsenal.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: brighton.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: chelsea.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: southampton.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: wolverhampton.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: nforest.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: astonvilla.id, matchweek: mw27, date: Date.new(2023,3,11), hour: 16)

puts ">> Matchweek #27 created !"
puts "Creating matchweek #28 matches..."

Match.create(team_home_id: arsenal.id, team_away_id: crystalpalace.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: astonvilla.id, team_away_id: bournemouth.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: leicester.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: manunited.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: everton.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: fulham.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: westham.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: newcastle.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: tottenham.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: leeds.id, matchweek: mw28, date: Date.new(2023,3,18), hour: 16)

puts ">> Matchweek #28 created !"
puts "Creating matchweek #29 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: fulham.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: arsenal.id, team_away_id: leeds.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: brentford.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: astonvilla.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: leicester.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: tottenham.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: liverpool.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: manunited.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: wolverhampton.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: southampton.id, matchweek: mw29, date: Date.new(2023,4,1), hour: 16)

puts ">> Matchweek #29 created !"
puts "Creating matchweek #30 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: nforest.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: newcastle.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: westham.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: crystalpalace.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: bournemouth.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: arsenal.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: everton.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: mancity.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: brighton.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: chelsea.id, matchweek: mw30, date: Date.new(2023,4,8), hour: 16)

puts ">> Matchweek #30 created !"
puts "Creating matchweek #31 matches..."

Match.create(team_home_id: astonvilla.id, team_away_id: newcastle.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: brighton.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: fulham.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: liverpool.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: leicester.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: manunited.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: crystalpalace.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: bournemouth.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: arsenal.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: brentford.id, matchweek: mw31, date: Date.new(2023,4,15), hour: 16)

puts ">> Matchweek #31 created !"
puts "Creating matchweek #32 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: westham.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: arsenal.id, team_away_id: southampton.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: astonvilla.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: mancity.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: everton.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: leeds.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: wolverhampton.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: nforest.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: chelsea.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: tottenham.id, matchweek: mw32, date: Date.new(2023,4,22), hour: 16)

puts ">> Matchweek #32 created !"
puts "Creating matchweek #33 matches..."

Match.create(team_home_id: everton.id, team_away_id: newcastle.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: leeds.id, team_away_id: leicester.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: nforest.id, team_away_id: brighton.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: tottenham.id, team_away_id: manunited.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: westham.id, team_away_id: liverpool.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: wolverhampton.id, team_away_id: crystalpalace.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: astonvilla.id, team_away_id: fulham.id, matchweek: mw33, date: Date.new(2023,4,25), hour: 21)
Match.create(team_home_id: chelsea.id, team_away_id: brentford.id, matchweek: mw33, date: Date.new(2023,4,26), hour: 21)
Match.create(team_home_id: southampton.id, team_away_id: bournemouth.id, matchweek: mw33, date: Date.new(2023,4,26), hour: 21)
Match.create(team_home_id: mancity.id, team_away_id: arsenal.id, matchweek: mw33, date: Date.new(2023,4,26), hour: 21)

puts ">> Matchweek #33 created !"
puts "Creating matchweek #34 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: leeds.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: arsenal.id, team_away_id: chelsea.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: nforest.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: wolverhampton.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: westham.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: mancity.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: everton.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: tottenham.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: astonvilla.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: southampton.id, matchweek: mw34, date: Date.new(2023,4,29), hour: 16)

puts ">> Matchweek #34 created !"
puts "Creating matchweek #35 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: chelsea.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: everton.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: leicester.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: brentford.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: leeds.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: arsenal.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: southampton.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: crystalpalace.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: manunited.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: astonvilla.id, matchweek: mw35, date: Date.new(2023,5,6), hour: 16)

puts ">> Matchweek #35 created !"
puts "Creating matchweek #36 matches..."

Match.create(team_home_id: arsenal.id, team_away_id: brighton.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: astonvilla.id, team_away_id: tottenham.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: brentford.id, team_away_id: westham.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: chelsea.id, team_away_id: nforest.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: crystalpalace.id, team_away_id: bournemouth.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: everton.id, team_away_id: mancity.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: leeds.id, team_away_id: newcastle.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: leicester.id, team_away_id: liverpool.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: manunited.id, team_away_id: wolverhampton.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)
Match.create(team_home_id: southampton.id, team_away_id: fulham.id, matchweek: mw36, date: Date.new(2023,5,13), hour: 16)

puts ">> Matchweek #36 created !"
puts "Creating matchweek #37 matches..."

Match.create(team_home_id: bournemouth.id, team_away_id: manunited.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: brighton.id, team_away_id: southampton.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: fulham.id, team_away_id: crystalpalace.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: liverpool.id, team_away_id: astonvilla.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: mancity.id, team_away_id: chelsea.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: newcastle.id, team_away_id: leicester.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: nforest.id, team_away_id: arsenal.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: tottenham.id, team_away_id: brentford.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: westham.id, team_away_id: leeds.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)
Match.create(team_home_id: wolverhampton.id, team_away_id: everton.id, matchweek: mw37, date: Date.new(2023,5,20), hour: 16)

puts ">> Matchweek #37 created !"
puts "Creating matchweek #38 matches..."

Match.create(team_home_id: arsenal.id, team_away_id: wolverhampton.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: astonvilla.id, team_away_id: brighton.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: brentford.id, team_away_id: mancity.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: chelsea.id, team_away_id: newcastle.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: crystalpalace.id, team_away_id: nforest.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: everton.id, team_away_id: bournemouth.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: leeds.id, team_away_id: tottenham.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: leicester.id, team_away_id: westham.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: manunited.id, team_away_id: fulham.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)
Match.create(team_home_id: southampton.id, team_away_id: liverpool.id, matchweek: mw38, date: Date.new(2023,5,28), hour: 17)

puts "Calculating Teams ranking"

arsenal.calculate_score
arsenal.save!
mancity.calculate_score
mancity.save!
newcastle.calculate_score
newcastle.save!
tottenham.calculate_score
tottenham.save!
manunited.calculate_score
manunited.save!
liverpool.calculate_score
liverpool.save!
brighton.calculate_score
brighton.save!
chelsea.calculate_score
chelsea.save!
brentford.calculate_score
brentford.save!
fulham.calculate_score
fulham.save!
crystalpalace.calculate_score
crystalpalace.save!
astonvilla.calculate_score
astonvilla.save!
leicester.calculate_score
leicester.save!
bournemouth.calculate_score
bournemouth.save!
leeds.calculate_score
leeds.save!
westham.calculate_score
westham.save!
everton.calculate_score
everton.save!
nforest.calculate_score
nforest.save!
southampton.calculate_score
southampton.save!
wolverhampton.calculate_score
wolverhampton.save!

puts ">> Team ranking calculated !"
