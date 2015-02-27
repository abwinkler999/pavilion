# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Slot.find_or_create_by(name: "A")
Slot.find_or_create_by(name: "B")
Slot.find_or_create_by(name: "C")
Slot.find_or_create_by(name: "D")

Level.find_or_create_by(name: "Tenderheart")
Level.find_or_create_by(name: "Explorer")
Level.find_or_create_by(name: "Pioneer")
Level.find_or_create_by(name: "Patriot")

Restriction.find_or_create_by(name: "All")
Restriction.find_or_create_by(name: "Pioneer Only")

Session.find_or_create_by(name: "Toys & Games", slot:Slot.find_by(name:"A"))
Session.find_or_create_by(name: "Emergency Prep", slot:Slot.find_by(name:"A"))
Session.find_or_create_by(name: "Native Americans", slot:Slot.find_by(name:"A"))

Session.find_or_create_by(name: "Outdoor Skills/Backpacking", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Textile Arts", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Swimming", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Archery", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Fire Building (Explorers Age 11 and Up Only)", slot:Slot.find_by(name:"B"))

Session.find_or_create_by(name: "Outdoor Skills/Backpacking", slot:Slot.find_by(name:"C"))
Session.find_or_create_by(name: "Bible Basics", slot:Slot.find_by(name:"C"))
Session.find_or_create_by(name: "Nature & Wildlife", slot:Slot.find_by(name:"C"))
Session.find_or_create_by(name: "Fire Building", slot:Slot.find_by(name:"C"))

Session.find_or_create_by(name: "Outdoor Cooking", slot:Slot.find_by(name:"D"))
Session.find_or_create_by(name: "Geology", slot:Slot.find_by(name:"D"))
Session.find_or_create_by(name: "Swimming", slot:Slot.find_by(name:"D"))

Tshirt.find_or_create_by(name: "YS")
Tshirt.find_or_create_by(name: "YM")
Tshirt.find_or_create_by(name: "YL")
Tshirt.find_or_create_by(name: "AS")
Tshirt.find_or_create_by(name: "AM")
Tshirt.find_or_create_by(name: "AL")
Tshirt.find_or_create_by(name: "AXL")
Tshirt.find_or_create_by(name: "A2XL")
Tshirt.find_or_create_by(name: "A3XL")