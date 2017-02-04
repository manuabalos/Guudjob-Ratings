# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # # # # # USER SEEDS # # # # #

  User.create(id: 1, email: 'user-1@example.net', status: 'approved')
  User.create(id: 2, email: 'user-2@example.net', status: 'disapproved')
  User.create(id: 3, email: 'user-3@example.net', status: 'pending')
  User.create(id: 4, email: 'user-4@example.net', status: 'approved')
  User.create(id: 5, email: 'user-5@example.net', status: 'pending')
  User.create(id: 6, email: 'user-6@example.net', status: 'pending')

