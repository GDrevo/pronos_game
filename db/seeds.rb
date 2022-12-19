# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Invitation.destroy_all
Match.destroy_all
Matchweek.destroy_all
Team.destroy_all
League.destroy_all
Season.destroy_all
User.destroy_all

puts "Creating two players Guillaume and Bernard..."
gui = User.create(email: 'gui@gui.com', password: 'gui@gui.com')
ber = User.create(email: 'ber@ber.com', password: 'ber@ber.com')
puts ">> Players gui and ber created !"

puts "Creating friendship between gui and ber..."
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

Match.create(team_home_id: troyes.id, team_away_id: nantes.id, matchweek: mw16, date: Date.new(2022,12,28))
Match.create(team_home_id: ajaccio.id, team_away_id: angers.id, matchweek: mw16, date: Date.new(2022,12,28))
Match.create(team_home_id: auxerre.id, team_away_id: monaco.id, matchweek: mw16, date: Date.new(2022,12,28))
Match.create(team_home_id: clermont.id, team_away_id: lille.id, matchweek: mw16, date: Date.new(2022,12,28))
Match.create(team_home_id: paris.id, team_away_id: strasbourg.id, matchweek: mw16, date: Date.new(2022,12,28))
Match.create(team_home_id: brest.id, team_away_id: lyon.id, matchweek: mw16, date: Date.new(2022,12,28))
Match.create(team_home_id: lorient.id, team_away_id: montpellier.id, matchweek: mw16, date: Date.new(2022,12,29))
Match.create(team_home_id: reims.id, team_away_id: rennes.id, matchweek: mw16, date: Date.new(2022,12,29))
Match.create(team_home_id: nice.id, team_away_id: lens.id, matchweek: mw16, date: Date.new(2022,12,29))
Match.create(team_home_id: marseille.id, team_away_id: toulouse.id, matchweek: mw16, date: Date.new(2022,12,29))

puts ">> Matchweek #16 created !"
puts "Creating matchweek #17 matches..."

Match.create(team_home_id: monaco.id, team_away_id: brest.id, matchweek: mw17, date: Date.new(2023,1,1))
Match.create(team_home_id: angers.id, team_away_id: lorient.id, matchweek: mw17, date: Date.new(2023,1,1))
Match.create(team_home_id: nantes.id, team_away_id: auxerre.id, matchweek: mw17, date: Date.new(2023,1,1))
Match.create(team_home_id: toulouse.id, team_away_id: ajaccio.id, matchweek: mw17, date: Date.new(2023,1,1))
Match.create(team_home_id: lyon.id, team_away_id: clermont.id, matchweek: mw17, date: Date.new(2023,1,1))
Match.create(team_home_id: lens.id, team_away_id: paris.id, matchweek: mw17, date: Date.new(2023,1,1))
Match.create(team_home_id: strasbourg.id, team_away_id: troyes.id, matchweek: mw17, date: Date.new(2023,1,2))
Match.create(team_home_id: lille.id, team_away_id: reims.id, matchweek: mw17, date: Date.new(2023,1,2))
Match.create(team_home_id: montpellier.id, team_away_id: marseille.id, matchweek: mw17, date: Date.new(2023,1,2))
Match.create(team_home_id: rennes.id, team_away_id: nice.id, matchweek: mw17, date: Date.new(2023,1,2))

puts ">> Matchweek #17 created !"
puts "Creating matchweek #18 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: reims.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: auxerre.id, team_away_id: toulouse.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: clermont.id, team_away_id: rennes.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: nantes.id, team_away_id: lyon.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: brest.id, team_away_id: lille.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: troyes.id, team_away_id: marseille.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: nice.id, team_away_id: montpellier.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: paris.id, team_away_id: angers.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: strasbourg.id, team_away_id: lens.id, matchweek: mw18, date: Date.new(2023,1,11))
Match.create(team_home_id: lorient.id, team_away_id: monaco.id, matchweek: mw18, date: Date.new(2023,1,11))

puts ">> Matchweek #18 created !"
puts "Creating matchweek #19 matches..."

Match.create(team_home_id: lens.id, team_away_id: auxerre.id, matchweek: mw19, date: Date.new(2023,1,14))
Match.create(team_home_id: marseille.id, team_away_id: lorient.id, matchweek: mw19, date: Date.new(2023,1,14))
Match.create(team_home_id: lyon.id, team_away_id: strasbourg.id, matchweek: mw19, date: Date.new(2023,1,14))
Match.create(team_home_id: lille.id, team_away_id: troyes.id, matchweek: mw19, date: Date.new(2023,1,15))
Match.create(team_home_id: montpellier.id, team_away_id: nantes.id, matchweek: mw19, date: Date.new(2023,1,15))
Match.create(team_home_id: angers.id, team_away_id: clermont.id, matchweek: mw19, date: Date.new(2023,1,15))
Match.create(team_home_id: reims.id, team_away_id: nice.id, matchweek: mw19, date: Date.new(2023,1,15))
Match.create(team_home_id: toulouse.id, team_away_id: brest.id, matchweek: mw19, date: Date.new(2023,1,15))
Match.create(team_home_id: monaco.id, team_away_id: ajaccio.id, matchweek: mw19, date: Date.new(2023,1,15))
Match.create(team_home_id: rennes.id, team_away_id: paris.id, matchweek: mw19, date: Date.new(2023,1,15))

puts ">> Matchweek #19 created !"
puts "Creating matchweek #20 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: lyon.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: auxerre.id, team_away_id: montpellier.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: clermont.id, team_away_id: nantes.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: lorient.id, team_away_id: rennes.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: nice.id, team_away_id: lille.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: marseille.id, team_away_id: monaco.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: paris.id, team_away_id: reims.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: strasbourg.id, team_away_id: toulouse.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: brest.id, team_away_id: angers.id, matchweek: mw20, date: Date.new(2023,1,29))
Match.create(team_home_id: troyes.id, team_away_id: lens.id, matchweek: mw20, date: Date.new(2023,1,29))

puts ">> Matchweek #20 created !"
puts "Creating matchweek #21 matches..."

Match.create(team_home_id: monaco.id, team_away_id: auxerre.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: angers.id, team_away_id: ajaccio.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: nantes.id, team_away_id: marseille.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: lille.id, team_away_id: clermont.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: montpellier.id, team_away_id: paris.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: lyon.id, team_away_id: brest.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: lens.id, team_away_id: nice.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: rennes.id, team_away_id: strasbourg.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: reims.id, team_away_id: lorient.id, matchweek: mw21, date: Date.new(2023,2,1))
Match.create(team_home_id: toulouse.id, team_away_id: troyes.id, matchweek: mw21, date: Date.new(2023,2,1))

puts ">> Matchweek #21 created !"
puts "Creating matchweek #22 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: nantes.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: auxerre.id, team_away_id: reims.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: clermont.id, team_away_id: monaco.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: lorient.id, team_away_id: angers.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: paris.id, team_away_id: toulouse.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: strasbourg.id, team_away_id: montpellier.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: brest.id, team_away_id: lens.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: rennes.id, team_away_id: lille.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: troyes.id, team_away_id: lyon.id, matchweek: mw22, date: Date.new(2023,2,5))
Match.create(team_home_id: marseille.id, team_away_id: nice.id, matchweek: mw22, date: Date.new(2023,2,5))

puts ">> Matchweek #22 created !"
puts "Creating matchweek #23 matches..."

Match.create(team_home_id: monaco.id, team_away_id: paris.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: angers.id, team_away_id: auxerre.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: clermont.id, team_away_id: marseille.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: nantes.id, team_away_id: lorient.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: lille.id, team_away_id: strasbourg.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: montpellier.id, team_away_id: brest.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: nice.id, team_away_id: ajaccio.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: lyon.id, team_away_id: lens.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: reims.id, team_away_id: troyes.id, matchweek: mw23, date: Date.new(2023,2,12))
Match.create(team_home_id: toulouse.id, team_away_id: rennes.id, matchweek: mw23, date: Date.new(2023,2,12))

puts ">> Matchweek #23 created !"
puts "Creating matchweek #24 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: lyon.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: lorient.id, team_away_id: ajaccio.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: nice.id, team_away_id: reims.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: paris.id, team_away_id: lille.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: lens.id, team_away_id: nantes.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: strasbourg.id, team_away_id: angers.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: brest.id, team_away_id: monaco.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: rennes.id, team_away_id: clermont.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: toulouse.id, team_away_id: marseille.id, matchweek: mw24, date: Date.new(2023,2,19))
Match.create(team_home_id: troyes.id, team_away_id: montpellier.id, matchweek: mw24, date: Date.new(2023,2,19))

puts ">> Matchweek #24 created !"
puts "Creating matchweek #25 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: troyes.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: monaco.id, team_away_id: nice.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: angers.id, team_away_id: lyon.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: clermont.id, team_away_id: strasbourg.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: lorient.id, team_away_id: auxerre.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: nantes.id, team_away_id: rennes.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: lille.id, team_away_id: brest.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: montpellier.id, team_away_id: lens.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: reims.id, team_away_id: toulouse.id, matchweek: mw25, date: Date.new(2023,2,26))
Match.create(team_home_id: marseille.id, team_away_id: paris.id, matchweek: mw25, date: Date.new(2023,2,26))

puts ">> Matchweek #25 created !"
puts "Creating matchweek #26 matches..."

Match.create(team_home_id: montpellier.id, team_away_id: angers.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: nice.id, team_away_id: auxerre.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: lyon.id, team_away_id: lorient.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: paris.id, team_away_id: nantes.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: lens.id, team_away_id: lille.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: strasbourg.id, team_away_id: brest.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: rennes.id, team_away_id: marseille.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: reims.id, team_away_id: ajaccio.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: toulouse.id, team_away_id: clermont.id, matchweek: mw26, date: Date.new(2023,3,5))
Match.create(team_home_id: troyes.id, team_away_id: monaco.id, matchweek: mw26, date: Date.new(2023,3,5))

puts ">> Matchweek #26 created !"
puts "Creating matchweek #27 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: montpellier.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: auxerre.id, team_away_id: rennes.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: monaco.id, team_away_id: reims.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: angers.id, team_away_id: toulouse.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: clermont.id, team_away_id: lens.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: lorient.id, team_away_id: troyes.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: nantes.id, team_away_id: nice.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: lille.id, team_away_id: lyon.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: marseille.id, team_away_id: strasbourg.id, matchweek: mw27, date: Date.new(2023,3,12))
Match.create(team_home_id: brest.id, team_away_id: paris.id, matchweek: mw27, date: Date.new(2023,3,12))

puts ">> Matchweek #27 created !"
puts "Creating matchweek #28 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: monaco.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: montpellier.id, team_away_id: clermont.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: nice.id, team_away_id: lorient.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: lyon.id, team_away_id: nantes.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: paris.id, team_away_id: rennes.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: lens.id, team_away_id: angers.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: strasbourg.id, team_away_id: auxerre.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: reims.id, team_away_id: marseille.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: toulouse.id, team_away_id: lille.id, matchweek: mw28, date: Date.new(2023,3,19))
Match.create(team_home_id: troyes.id, team_away_id: brest.id, matchweek: mw28, date: Date.new(2023,3,19))

puts ">> Matchweek #28 created !"
puts "Creating matchweek #29 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: troyes.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: monaco.id, team_away_id: strasbourg.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: angers.id, team_away_id: nice.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: clermont.id, team_away_id: ajaccio.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: nantes.id, team_away_id: reims.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: lille.id, team_away_id: lorient.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: marseille.id, team_away_id: montpellier.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: brest.id, team_away_id: toulouse.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: rennes.id, team_away_id: lens.id, matchweek: mw29, date: Date.new(2023,4,2))
Match.create(team_home_id: paris.id, team_away_id: lyon.id, matchweek: mw29, date: Date.new(2023,4,2))

puts ">> Matchweek #29 created !"
puts "Creating matchweek #30 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: auxerre.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: angers.id, team_away_id: lille.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: lorient.id, team_away_id: marseille.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: nantes.id, team_away_id: monaco.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: montpellier.id, team_away_id: toulouse.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: nice.id, team_away_id: paris.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: lyon.id, team_away_id: rennes.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: lens.id, team_away_id: strasbourg.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: reims.id, team_away_id: brest.id, matchweek: mw30, date: Date.new(2023,4,9))
Match.create(team_home_id: troyes.id, team_away_id: clermont.id, matchweek: mw30, date: Date.new(2023,4,9))

puts ">> Matchweek #30 created !"
puts "Creating matchweek #31 matches..."

Match.create(team_home_id: auxerre.id, team_away_id: nantes.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: monaco.id, team_away_id: lorient.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: clermont.id, team_away_id: angers.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: lille.id, team_away_id: montpellier.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: marseille.id, team_away_id: troyes.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: paris.id, team_away_id: lens.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: strasbourg.id, team_away_id: ajaccio.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: brest.id, team_away_id: nice.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: rennes.id, team_away_id: reims.id, matchweek: mw31, date: Date.new(2023,4,16))
Match.create(team_home_id: toulouse.id, team_away_id: lyon.id, matchweek: mw31, date: Date.new(2023,4,16))

puts ">> Matchweek #31 created !"
puts "Creating matchweek #32 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: brest.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: auxerre.id, team_away_id: lille.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: angers.id, team_away_id: paris.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: lorient.id, team_away_id: toulouse.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: nantes.id, team_away_id: troyes.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: montpellier.id, team_away_id: rennes.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: nice.id, team_away_id: clermont.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: lens.id, team_away_id: monaco.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: reims.id, team_away_id: strasbourg.id, matchweek: mw32, date: Date.new(2023,4,23))
Match.create(team_home_id: lyon.id, team_away_id: marseille.id, matchweek: mw32, date: Date.new(2023,4,23))

puts ">> Matchweek #32 created !"
puts "Creating matchweek #33 matches..."

Match.create(team_home_id: monaco.id, team_away_id: montpellier.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: clermont.id, team_away_id: reims.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: lille.id, team_away_id: ajaccio.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: marseille.id, team_away_id: auxerre.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: paris.id, team_away_id: lorient.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: strasbourg.id, team_away_id: lyon.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: brest.id, team_away_id: nantes.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: rennes.id, team_away_id: angers.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: toulouse.id, team_away_id: lens.id, matchweek: mw33, date: Date.new(2023,4,30))
Match.create(team_home_id: troyes.id, team_away_id: nice.id, matchweek: mw33, date: Date.new(2023,4,30))

puts ">> Matchweek #33 created !"
puts "Creating matchweek #34 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: toulouse.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: auxerre.id, team_away_id: clermont.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: angers.id, team_away_id: monaco.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: lorient.id, team_away_id: brest.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: nantes.id, team_away_id: strasbourg.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: nice.id, team_away_id: rennes.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: lyon.id, team_away_id: montpellier.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: lens.id, team_away_id: marseille.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: reims.id, team_away_id: lille.id, matchweek: mw34, date: Date.new(2023,5,7))
Match.create(team_home_id: troyes.id, team_away_id: paris.id, matchweek: mw34, date: Date.new(2023,5,7))

puts ">> Matchweek #34 created !"
puts "Creating matchweek #35 matches..."

Match.create(team_home_id: monaco.id, team_away_id: lille.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: clermont.id, team_away_id: lyon.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: montpellier.id, team_away_id: lorient.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: marseille.id, team_away_id: angers.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: paris.id, team_away_id: ajaccio.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: lens.id, team_away_id: reims.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: strasbourg.id, team_away_id: nice.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: brest.id, team_away_id: auxerre.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: rennes.id, team_away_id: troyes.id, matchweek: mw35, date: Date.new(2023,5,14))
Match.create(team_home_id: toulouse.id, team_away_id: nantes.id, matchweek: mw35, date: Date.new(2023,5,14))

puts ">> Matchweek #35 created !"
puts "Creating matchweek #36 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: rennes.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: auxerre.id, team_away_id: paris.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: lorient.id, team_away_id: lens.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: nantes.id, team_away_id: montpellier.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: lille.id, team_away_id: marseille.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: nice.id, team_away_id: toulouse.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: lyon.id, team_away_id: monaco.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: brest.id, team_away_id: clermont.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: reims.id, team_away_id: angers.id, matchweek: mw36, date: Date.new(2023,5,21))
Match.create(team_home_id: troyes.id, team_away_id: strasbourg.id, matchweek: mw36, date: Date.new(2023,5,21))

puts ">> Matchweek #36 created !"
puts "Creating matchweek #37 matches..."

Match.create(team_home_id: angers.id, team_away_id: troyes.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: clermont.id, team_away_id: lorient.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: lille.id, team_away_id: nantes.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: montpellier.id, team_away_id: nice.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: lyon.id, team_away_id: reims.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: marseille.id, team_away_id: brest.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: lens.id, team_away_id: ajaccio.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: strasbourg.id, team_away_id: paris.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: rennes.id, team_away_id: monaco.id, matchweek: mw37, date: Date.new(2023,5,27))
Match.create(team_home_id: toulouse.id, team_away_id: auxerre.id, matchweek: mw37, date: Date.new(2023,5,27))

puts ">> Matchweek #37 created !"
puts "Creating matchweek #38 matches..."

Match.create(team_home_id: ajaccio.id, team_away_id: marseille.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: auxerre.id, team_away_id: lens.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: monaco.id, team_away_id: toulouse.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: lorient.id, team_away_id: strasbourg.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: nantes.id, team_away_id: angers.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: nice.id, team_away_id: lyon.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: paris.id, team_away_id: clermont.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: brest.id, team_away_id: rennes.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: reims.id, team_away_id: montpellier.id, matchweek: mw38, date: Date.new(2023,6,3))
Match.create(team_home_id: troyes.id, team_away_id: lille.id, matchweek: mw38, date: Date.new(2023,6,3))
