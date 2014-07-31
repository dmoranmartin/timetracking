# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project = Project.create(name: 'Ironhack', description: 'Ironhack is a...')
project.entries.create( date: "01/01/2012".to_date, hours: 13, minutes: 14, comment: "Good entry")