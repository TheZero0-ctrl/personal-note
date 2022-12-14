# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

testuser1 = User.create(email: "testuser1@mail.com", password: "123456")
testuser2 = User.create(email: "testuser2@mail.com", password: "123456")


4.times do |n|
    testuser1.notes.create(title: Faker::Lorem.word ,content: Faker::Quote.matz, created_at: n.days.ago)
    testuser2.notes.create(title: Faker::Lorem.word ,content: Faker::Quote.matz, created_at: n.days.ago)
end