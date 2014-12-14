# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Developers (Needed for our presentation will be deleted on final delivery)
PeerAlly.create(name: 'Daniel Peterschmidt', bio: "Developer Daniel Peterschmidt", ups_id: 'dpeterschmidt', :administrator => true, :display => false)
PeerAlly.create(name: 'Evan Carlin', bio: "Developer Evan Carlin", ups_id: 'ecarlin', :administrator => true, :display => false)
PeerAlly.create(name: 'Beth Anderson', bio: "Developer Beth Anderson", ups_id: 'bmanderson', :administrator => true, :display => false)
PeerAlly.create(name: 'Jacob Imlay', bio: "Developer Jacob Imlay", ups_id: 'jimlay', :administrator => true, :display => false)




#An ally and a developer
PeerAlly.create(name: 'Joshua Nance', bio: "Developer Joshua Nance", ups_id: 'jnance', :administrator => true, :display => true)


#Faculty advisor (also an admin)
PeerAlly.create(name: 'Marta Palmquist Cady', ups_id: 'mpalmquist', :administrator => true, :display => false)

#Allies and Admin
PeerAlly.create(name: 'Bianca Jarvis', ups_id: 'bjarvis', :administrator => true, :display => true)
PeerAlly.create(name: 'Brandon Johnson', ups_id: 'bjohnson', :administrator => true, :display => true)

#Allies
PeerAlly.create(name: 'Lorrain Oill', ups_id: 'loill', :administrator => false, :display => true)
PeerAlly.create(name: 'Becca Ebert', ups_id: 'bebert', :administrator => false, :display => true)
PeerAlly.create(name: 'Greg Reeser', ups_id: 'greeser', :administrator => false, :display => true)
PeerAlly.create(name: 'Cora Young', ups_id: 'clyoung', :administrator => false, :display => true)
PeerAlly.create(name: 'Elise Zeidman', ups_id: 'ezeidman', :administrator => false, :display => true)
PeerAlly.create(name: 'Lucy Fey', ups_id: 'lfey', :administrator => false, :display => true)
PeerAlly.create(name: 'Sara Spevack', ups_id: 'sspevack', :administrator => false, :display => true)
PeerAlly.create(name: 'Karen Carlson', ups_id: 'kcarlson', :administrator => false, :display => true)
PeerAlly.create(name: 'Sarah Cobbett', ups_id: 'scobbett', :administrator => false, :display => true)



