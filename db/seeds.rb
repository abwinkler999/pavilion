# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "admin@test.com", password: "password", is_admin: true)
User.create(email: "user@test.com", password: "password", is_admin: false)
User.create(email: "second_user@test.com", password: "password", is_admin: false)

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

Adult.find_or_create_by(first_name: "Wally", last_name: "West", address: "1 South Street, Central City, AZ 99304", phone: "614-555-5556", cpr: false, first_aid:true, tshirt: AdultLarge, troopnumber: "OH2999", troopcontact: "Iris West", no_gluten: true)
Adult.find_or_create_by(first_name: "Selina", last_name: "Kyle", address: "89 Castle Ave, Gotham City, NH 10200", phone: "614-555-5557", cpr: true, first_aid:false, tshirt: AdultDoubleLarge, troopnumber: "OH2999", troopcontact: "Iris West", dietary: "Kosher", no_gluten: false)

SomeParent = User.last
Girl.find_or_create_by(first_name: "Meg", last_name: "March", dob: "01/19/2007", level: Tenderheart, dietary: "none", fallgrade: "4", parentcell: "614-555-1020", troopnumber: "OH3030", tshirt: GirlMedium)
Girl.find_or_create_by(first_name: "Anne", last_name: "Shirley", dob: "01/19/2006", level: Explorer, dietary: "none", fallgrade: "5", parentcell: "614-555-1011", troopnumber: "OH3030", tshirt: GirlMedium)
Girl.find_or_create_by(first_name: "Marianne", last_name: "Dashwood", dob: "01/19/2009", level: PiPa, dietary: "none", no_gluten:true, fallgrade: "3", parentcell: "614-565-9019", troopnumber: "OH3030", tshirt: GirlMedium)
