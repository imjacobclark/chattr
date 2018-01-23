# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jacob = User.create! :first_name => 'Jacob', :last_name => 'Clark', :email => 'jacob.clark@internet.com', :password => 'secrets123', :password_confirmation => 'secrets123'
emma = User.create! :first_name => 'Emma', :last_name => 'Haughton', :email => 'emma.haughton@internet.com', :password => 'topsecret', :password_confirmation => 'topsecret'

message = Message.create(body: "Hello Jacob!", sender: emma, recipient: jacob)
message = Message.create(body: "Hey Emma", sender: jacob, recipient: emma)
