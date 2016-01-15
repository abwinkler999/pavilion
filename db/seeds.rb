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

Restriction.find_or_create_by(name: "All")
Restriction.find_or_create_by(name: "Pioneer/Patriot Only")

Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotA, level: Tenderheart)
Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotB, level: Tenderheart)
Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotC, level: Tenderheart)
Session.find_or_create_by(name: "Tenderheart Activities", slot: SlotD, level: Tenderheart)

Session.find_or_create_by(name: "Outdoor Skills", slot: SlotA, level: Explorer )
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotB, level: PiPa )
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotC, level: PiPa )
Session.find_or_create_by(name: "Outdoor Skills", slot: SlotD, level: Explorer )

Session.find_or_create_by(name: "Pen and Paper", slot: SlotA, level: Explorer )
Session.find_or_create_by(name: "Pen and Paper", slot: SlotB, level: PiPa )
Session.find_or_create_by(name: "Pen and Paper", slot: SlotC, level: Explorer )
Session.find_or_create_by(name: "Pen and Paper", slot: SlotD, level: PiPa )

Session.find_or_create_by(name: "Robotics", slot: SlotA, level: PiPa )
Session.find_or_create_by(name: "Robotics", slot: SlotB, level: Explorer )
Session.find_or_create_by(name: "Robotics", slot: SlotC, level: Explorer )
Session.find_or_create_by(name: "Robotics", slot: SlotD, level: PiPa )

Session.find_or_create_by(name: "Our Flag", slot: SlotA, level: Explorer )
Session.find_or_create_by(name: "Our Flag", slot: SlotB, level: PiPa )
Session.find_or_create_by(name: "Our Flag", slot: SlotC, level: PiPa )
Session.find_or_create_by(name: "Our Flag", slot: SlotD, level: Explorer )

Session.find_or_create_by(name: "Canoeing", slot: SlotA, level: PiPa )
Session.find_or_create_by(name: "Canoeing", slot: SlotB, level: Explorer )
Session.find_or_create_by(name: "Canoeing", slot: SlotC, level: Explorer )
Session.find_or_create_by(name: "Canoeing", slot: SlotD, level: PiPa )

Session.find_or_create_by(name: "Fire Building", slot: SlotA, level: PiPa )
Session.find_or_create_by(name: "Fire Building", slot: SlotB, level: Explorer )
Session.find_or_create_by(name: "Fire Building", slot: SlotC, level: Explorer )
Session.find_or_create_by(name: "Fire Building", slot: SlotD, level: PiPa )

Session.find_or_create_by(name: "Survival, Search, and Rescue", slot: SlotA, level: Explorer )
Session.find_or_create_by(name: "Survival, Search, and Rescue", slot: SlotB, level: PiPa )
Session.find_or_create_by(name: "Survival, Search, and Rescue", slot: SlotC, level: Explorer )
Session.find_or_create_by(name: "Survival, Search, and Rescue", slot: SlotD, level: PiPa )

Session.find_or_create_by(name: "Sign Language", slot: SlotA, level: PiPa )
Session.find_or_create_by(name: "Sign Language", slot: SlotB, level: Explorer )
Session.find_or_create_by(name: "Sign Language", slot: SlotC, level: PiPa )
Session.find_or_create_by(name: "Sign Language", slot: SlotD, level: Explorer )

Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotA, level: PiPa )
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotB, level: Explorer )
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotC, level: PiPa )
Session.find_or_create_by(name: "Outdoor Cooking", slot: SlotD, level: Explorer )


ASessions = Session.where(slot:SlotA)
BSessions = Session.where(slot:SlotB)
CSessions = Session.where(slot:SlotC)
DSessions = Session.where(slot:SlotD)

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

SomeParent = User.last
