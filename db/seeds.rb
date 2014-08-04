# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create( [{latitude: 18.492781, longitude: -69.918827, status: 'on', event_date: Time.now},
{latitude: 18.476744, longitude: -69.901317, status: 'on', event_date: Time.now},
{latitude: 18.487001, longitude: -69.926208, status: 'off', event_date: Time.now}])