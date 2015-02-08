# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Slot.find_or_create_by(name: "9:00-10:00 AM")
Slot.find_or_create_by(name: "10:30-11:30 AM")
Slot.find_or_create_by(name: "1:00-2:00 PM")
Slot.find_or_create_by(name: "2:30-3:30 PM")
Slot.find_or_create_by(name: "4:00-5:00 PM")

Restriction.find_or_create_by(name: "All")
Restriction.find_or_create_by(name: "Pioneer Only")

Session.find_or_create_by(name: "Archery", description: "Shooting arrows at things", slot: Slot.first, restriction: Restriction.find_by(name:"All"))