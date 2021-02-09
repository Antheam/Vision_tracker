# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# n = User.create(name:"N")
# m = User.create(name:"M")


# g1 = Goal.create(user_id: n.id, title: "join olympics", description:"dhfkjsh", target:100)
# g2 = Goal.create(user_id: n.id, title: "learn french", description:"kdkdkdkkdkjdkd", target:220)
# g3 = Goal.create(user_id: n.id, title: "smart a blog", description:"dhfkjsherere", target:100)
# g4 = Goal.create(user_id: m.id, title: "Write a novel", description:"ereraerewr", target:100)
# g5 = Goal.create(user_id: m.id, title: "knitting", description:"dhfkjshdjfdjkhf", target:100)
# g6 = Goal.create(user_id: m.id, title: "become a good cooker", description:"ldfkhdsadffha", target:100)



User.destroy_all
Goal.destroy_all

  #  https://github.com/faker-ruby/faker
  # add
  # gem 'faker'
  # to group :development, :test

User.create!(name: 'Harry Potter', email: '2@2', password: '222222') # this will be your 'admin' account to sign in and check if shit works. 


10.times do # these will be random users
  name = Faker::Name.name
  email = Faker::Internet.unique.email
  password = Faker::Alphanumeric.alphanumeric(number: 10)

  User.create!(name: name, email: email, password: password)
end

20.times do # can change this number to a bigger one for more goal seeds
  # user_id = (1..11).to_a.sample #random number upto 10 as we have made 10 users
  title = Faker::Lorem.word
  description = Faker::Lorem.paragraph(sentence_count: 4)
  target = [100, 150, 200].sample

  Goal.create!(user_id: User.first.id, title: title, description: description, target: target)
end# g6 = Goal.create(user_id: m.id, title: "become a good cooker", description:"ldfkhdsadffha", target:100)



User.destroy_all
Goal.destroy_all

  #  https://github.com/faker-ruby/faker
  # add
  # gem 'faker'
  # to group :development, :test

User.create!(name: 'Harry Potter', email: '2@2', password: '222222') # this will be your 'admin' account to sign in and check if shit works. 


10.times do # these will be random users
  name = Faker::Name.name
  email = Faker::Internet.unique.email
  password = Faker::Alphanumeric.alphanumeric(number: 10)

  User.create!(name: name, email: email, password: password)
end

20.times do # can change this number to a bigger one for more goal seeds
  # user_id = (1..11).to_a.sample #random number upto 10 as we have made 10 users
  title = Faker::Lorem.word
  description = Faker::Lorem.paragraph(sentence_count: 4)
  target = [100, 150, 200].sample

  Goal.create!(user_id: User.first.id, title: title, description: description, target: target)
end