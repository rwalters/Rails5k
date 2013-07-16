# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email_address: 'wharrison@example.com', first_name: 'William', last_name: 'Harrison')
User.create(email_address: 'alincoln@example.com', first_name: 'Abraham', last_name: 'Lincoln')

Story.create(author: 'Wesley Crusher', title: 'Just a Story', body: 'Just a quick story')
Story.create(author: 'Abraham Lincoln', title: 'Just another Story', body: 'Four score and seven years ago...')
