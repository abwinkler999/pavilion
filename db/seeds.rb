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

Level.find_or_create_by(name: "Tenderheart")
Level.find_or_create_by(name: "Explorer")
Level.find_or_create_by(name: "Pioneer/Patriot")

Restriction.find_or_create_by(name: "All")
Restriction.find_or_create_by(name: "Lion Only")

Session.find_or_create_by(name: "Old-Time Games", slot:Slot.find_by(name:"A"))
Session.find_or_create_by(name: "Emergency Prep", slot:Slot.find_by(name:"A"))
Session.find_or_create_by(name: "Native Americans", slot:Slot.find_by(name:"A"))

Session.find_or_create_by(name: "Outdoor Skills/Backpacking", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Textile Arts", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Swimming", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Archery", slot:Slot.find_by(name:"B"))
Session.find_or_create_by(name: "Fire Building", slot:Slot.find_by(name:"B"))

Session.find_or_create_by(name: "Outdoor Skills/Backpacking", slot:Slot.find_by(name:"C"))
Session.find_or_create_by(name: "Camping Basics", slot:Slot.find_by(name:"C"))
Session.find_or_create_by(name: "Nature & Wildlife", slot:Slot.find_by(name:"C"))
Session.find_or_create_by(name: "Fire Building", slot:Slot.find_by(name:"C"))

Session.find_or_create_by(name: "Outdoor Cooking", slot:Slot.find_by(name:"D"))
Session.find_or_create_by(name: "Geology", slot:Slot.find_by(name:"D"))
Session.find_or_create_by(name: "Swimming", slot:Slot.find_by(name:"D"))

ASlot = Slot.where(name:"A")
BSlot = Slot.where(name:"B")
CSlot = Slot.where(name:"C")
DSlot = Slot.where(name:"D")

ASessions = Session.where(slot:ASlot)
BSessions = Session.where(slot:BSlot)
CSessions = Session.where(slot:CSlot)
DSessions = Session.where(slot:DSlot)

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

Puma = Level.where(name:"Puma").first
Lion = Level.where(name:"Lion").first
Cub = Level.where(name:"Cub").first

Adult.find_or_create_by(first_name: "Wally", last_name: "West", address: "1 South Street, Central City, AZ 99304", phone: "614-555-5556", cpr: false, first_aid:true, tshirt: AdultLarge, troopnumber: "OH2999", troopcontact: "Iris West", no_gluten: true)
Adult.find_or_create_by(first_name: "Selina", last_name: "Kyle", address: "89 Castle Ave, Gotham City, NH 10200", phone: "614-555-5557", cpr: true, first_aid:false, tshirt: AdultDoubleLarge, troopnumber: "OH2999", troopcontact: "Iris West", dietary: "Kosher", no_gluten: false)

SomeParent = User.last
Girl.find_or_create_by(first_name: "Meg", last_name: "March", dob: "01/19/2007", level: Puma, dietary: "none", fallgrade: "4", parentcell: "614-555-1020", troopnumber: "OH3030", tshirt: GirlMedium, session_A: ASessions.first, session_B: BSessions.last, session_C: CSessions.first, session_D: DSessions.last)
Girl.find_or_create_by(first_name: "Anne", last_name: "Shirley", dob: "01/19/2006", level: Lion, dietary: "none", fallgrade: "5", parentcell: "614-555-1011", troopnumber: "OH3030", tshirt: GirlMedium, session_A: ASessions.last, session_B: BSessions.first, session_C: CSessions.second, session_D: DSessions.last)
Girl.find_or_create_by(first_name: "Marianne", last_name: "Dashwood", dob: "01/19/2009", level: Cub, dietary: "none", no_gluten:true, fallgrade: "3", parentcell: "614-565-9019", troopnumber: "OH3030", tshirt: GirlMedium, session_A: ASessions.last, session_B: BSessions.first, session_C: CSessions.second, session_D: DSessions.last)
