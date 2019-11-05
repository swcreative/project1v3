# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'warren@ga.co', :name => 'Warren', :password => 'chicken'
u2 = User.create :email => 'bill@ga.co', :name => 'Bill', :password => 'chicken'
puts "#{ User.count} users created"

Note.destroy_all
n3 = Note.create :title => 'What the drought means for your share portfolio', :post => 'With.'
puts "#{ Note.count} notes created"

Share.destroy_all
s1 = Share.create :code => 'ANZ'
# s2 = Share.create :code => 'CBA'
# s3 = Share.create :code => 'ORI'
# s4 = Share.create :code => 'BHP'
# s5 = Share.create :code => 'APT'
# s6 = Share.create :code => 'XRO'
# s7 = Share.create :code => 'CSR'
# s8 = Share.create :code => 'BLD'
# s9 = Share.create :code => 'MQG'
puts "#{ Share.count} shares created"

# Associations #############################

# puts "Notes and Shares"
s1.notes << n3
# s2.shares << n2

# puts "Notes and Users"
u1.notes << n3
# u2.notes << n2
