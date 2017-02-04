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


  # # # # # PROFILE SEEDS # # # # #

  Profile.create(id: 1, name: 'name-1', surname: 'surname-1', user_id: 1)
  Profile.create(id: 2, name: 'name-2', surname: 'surname-2', user_id: 1)
  Profile.create(id: 3, name: 'name-3', surname: 'surname-3', user_id: 2)
  Profile.create(id: 4, name: 'name-4', surname: 'surname-4', user_id: 3)
  Profile.create(id: 5, name: 'name-5', surname: 'surname-5', user_id: 4)

 # # # # # RATINGS SEEDS # # # # #

 Rating.create(id: 1, user_id: 1, profile_id: 3, rate: 7)
 Rating.create(id: 2, user_id: 1, profile_id: 4, rate: 5)
 Rating.create(id: 3, user_id: 1, profile_id: 5, rate: 9)


