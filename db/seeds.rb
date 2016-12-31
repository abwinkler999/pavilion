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

SlotA = Slot.where(name:"A").first
SlotB = Slot.where(name:"B").first
SlotC = Slot.where(name:"C").first
SlotD = Slot.where(name:"D").first

Level.find_or_create_by(name: "Tenderheart")
Level.find_or_create_by(name: "Explorer")
Level.find_or_create_by(name: "Pioneer/Patriot")

Tenderheart = Level.where(name:"Tenderheart").first
Explorer = Level.where(name:"Explorer").first
PiPa = Level.where(name:"Pioneer/Patriot").first

Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotA, level: Tenderheart)
Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotB, level: Tenderheart)
Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotC, level: Tenderheart)
Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotD, level: Tenderheart)

Session.find_or_create_by(name: "Our Feathered Friends", slot: SlotA, level: PiPa)
Session.find_or_create_by(name: "Climb On", slot: SlotA, level: Explorer)
Session.find_or_create_by(name: "Fire Building/Safety", slot: SlotA, level: PiPa)
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotA, level: Explorer, disclaimer: "You must have the Fire Building/Fire Safety badge to participate in this session.")
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotA, level: PiPa)
Session.find_or_create_by(name: "Archery", slot: SlotA, level: PiPa)
Session.find_or_create_by(name: "Canoeing", slot: SlotA, capacity: 10, level: Explorer, disclaimer: "You must have the Swimming badge to participate in this session.")
Session.find_or_create_by(name: "Home Care and Repair", slot: SlotA, level: PiPa)
Session.find_or_create_by(name: "Daughter of the King", slot: SlotA, level: Explorer)

Session.find_or_create_by(name: "Our Feathered Friends", slot: SlotB, level: Explorer)
Session.find_or_create_by(name: "Climb On", slot: SlotB, level: Explorer)
Session.find_or_create_by(name: "Fire Building/Safety", slot: SlotB, level: Explorer)
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotB, level: PiPa, disclaimer: "You must have the Fire Building/Fire Safety badge to participate in this session.")
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotB, level: PiPa)
Session.find_or_create_by(name: "Archery", slot: SlotB, level: Explorer)
Session.find_or_create_by(name: "Swimming", slot: SlotB, capacity: 12, level: Explorer)
Session.find_or_create_by(name: "Canoeing", slot: SlotB, capacity: 10, level: PiPa, disclaimer: "You must have the Swimming badge to participate in this session.")
Session.find_or_create_by(name: "Puppetry", slot: SlotB, level: Explorer)
Session.find_or_create_by(name: "Zoology", slot: SlotB, level: PiPa)

Session.find_or_create_by(name: "Our Feathered Friends", slot: SlotC, level: Explorer)
Session.find_or_create_by(name: "Climb On", slot: SlotC, level: PiPa)
Session.find_or_create_by(name: "Fire Building/Safety", slot: SlotC, level: PiPa)
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotC, level: PiPa, disclaimer: "You must have the Fire Building/Fire Safety badge to participate in this session.")
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotC, level: Explorer)
Session.find_or_create_by(name: "Archery", slot: SlotC, level: Explorer)
Session.find_or_create_by(name: "Swimming", slot: SlotC, capacity: 12, level: Explorer)
Session.find_or_create_by(name: "Canoeing", slot: SlotC, capacity: 10, level: PiPa, disclaimer: "You must have the Swimming badge to participate in this session.")
Session.find_or_create_by(name: "Puppetry", slot: SlotC, level: PiPa)

Session.find_or_create_by(name: "Climb On", slot: SlotD, level: PiPa)
Session.find_or_create_by(name: "Fire Building/Safety", slot: SlotD, level: Explorer)
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotD, level: Explorer, disclaimer: "You must have the Fire Building/Fire Safety badge to participate in this session.")
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotD, level: Explorer)
Session.find_or_create_by(name: "Archery", slot: SlotD, level: PiPa)
Session.find_or_create_by(name: "Swimming", slot: SlotD, capacity: 12, level: PiPa)
Session.find_or_create_by(name: "Zoology", slot: SlotD, level: Explorer)
Session.find_or_create_by(name: "Daughter of the King", slot: SlotD, level: PiPa)

#
#
# ASessions = Session.where(slot:SlotA)
# BSessions = Session.where(slot:SlotB)
# CSessions = Session.where(slot:SlotC)
# DSessions = Session.where(slot:SlotD)

Tshirt.find_or_create_by(name: "YS")
Tshirt.find_or_create_by(name: "YM")
Tshirt.find_or_create_by(name: "YL")
Tshirt.find_or_create_by(name: "AS")
Tshirt.find_or_create_by(name: "AM")
Tshirt.find_or_create_by(name: "AL")
Tshirt.find_or_create_by(name: "AXL")
Tshirt.find_or_create_by(name: "A2XL")
Tshirt.find_or_create_by(name: "A3XL")

AdultLarge = Tshirt.where(name:"AXL").first
AdultDoubleLarge = Tshirt.where(name:"A2XL").first
GirlMedium = Tshirt.where(name:"YM").first

#SomeParent = User.last
