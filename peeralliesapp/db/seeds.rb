# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#seed yourselves here

PeerAlly.create(name: 'Daniel Peterschmidt', bio: "Seeded developer Daniel Peterschmidt", ups_id: 'dpeterschmidt', :administrator => true, :display => false)
PeerAlly.create(name: 'Evan Carlin', bio: "Seeded developer Evan Carlin", ups_id: 'ecarlin', :administrator => true, :display => false)
PeerAlly.create(name: 'Beth Anderson', bio: "Seeded developer Beth Anderson", ups_id: 'bmanderson', :administrator => true, :display => false)
PeerAlly.create(name: 'Joshua Nance', bio: "Seeded developer Joshua Nance", ups_id: 'jnance', :administrator => true, :display => false)
PeerAlly.create(name: 'Jacob Imlay', bio: "Seeded developer Jacob Imlay", ups_id: 'jimlay', :administrator => true, :display => false)

PeerAlly.create(name: 'Peer Ally #1', bio: "Ally #1", ups_id: 'ally1', :display => true)
