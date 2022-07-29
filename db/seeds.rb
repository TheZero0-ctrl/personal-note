# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


testuser1 = User.create(email: "testuser@mail.com", password: "123456")

testuser1.notes.create(title: "hello", content: "lorem ipsum")
testuser1.notes.create(title: "about universe", content: "lorem ipsum 42 lorem ipsum")