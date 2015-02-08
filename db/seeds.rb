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

Level.find_or_create_by(name: "Pathfinder")
Level.find_or_create_by(name: "Tenderheart")
Level.find_or_create_by(name: "Explorer")
Level.find_or_create_by(name: "Pioneer")
Level.find_or_create_by(name: "Patriot")

Restriction.find_or_create_by(name: "All")
Restriction.find_or_create_by(name: "Pioneer Only")

Girl.find_or_create_by(first_name: "Dorothea", last_name: "Winkler", dob: "2006-01-01", level_id: 2)
Session.find_or_create_by(name: "Archery", description: "Learning ths sport of archery.", slot: Slot.find_by(name:"9:00-10:00 AM"), restriction: Restriction.find_by(name:"Pioneer Only"))
Session.find_or_create_by(name: "Pottery", description: "Introduction to pot-throwing.", slot: Slot.find_by(name:"9:00-10:00 AM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Fire Building", description: "Learning to build a campfire.", slot: Slot.find_by(name:"9:00-10:00 AM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Outdoor Cooking", description: "Learning to cook over a campfire.", slot: Slot.find_by(name:"10:30-11:30 AM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Swimming", description: "Pool time.", slot: Slot.find_by(name:"10:30-11:30 AM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Morning Hike", description: "Pool time.", slot: Slot.find_by(name:"10:30-11:30 AM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Birdwatching", description: "Pool time.", slot: Slot.find_by(name:"1:00-2:00 PM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Outdoor Cooking", description: "Pool time.", slot: Slot.find_by(name:"1:00-2:00 PM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Canoeing", description: "Pool time.", slot: Slot.find_by(name:"2:30-3:30 PM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Archery", description: "Pool time.", slot: Slot.find_by(name:"2:30-3:30 PM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Outdoor Cooking", description: "Pool time.", slot: Slot.find_by(name:"2:30-3:30 PM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Afternoon Hike", description: "Pool time.", slot: Slot.find_by(name:"4:00-5:00 PM"), restriction: Restriction.find_by(name:"All"))
Session.find_or_create_by(name: "Birdwatching", description: "Pool time.", slot: Slot.find_by(name:"4:00-5:00 PM"), restriction: Restriction.find_by(name:"All"))
