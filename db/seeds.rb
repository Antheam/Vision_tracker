# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
n = User.create(name:"N")
m = User.create(name:"M")


g1 = Goal.create(user_id: n.id, title: "join olympics", description:"dhfkjsh", target:100)
g2 = Goal.create(user_id: n.id, title: "learn french", description:"kdkdkdkkdkjdkd", target:220)
g3 = Goal.create(user_id: n.id, title: "smart a blog", description:"dhfkjsherere", target:100)
g4 = Goal.create(user_id: m.id, title: "Write a novel", description:"ereraerewr", target:100)
g5 = Goal.create(user_id: m.id, title: "knitting", description:"dhfkjshdjfdjkhf", target:100)
g6 = Goal.create(user_id: m.id, title: "become a good cooker", description:"ldfkhdsadffha", target:100)