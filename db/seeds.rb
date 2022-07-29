# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


testuser1 = User.create(email: "testuser@mail.com", password: "123456")
testuser2 = User.create(email: "testuser2@mail.com", password: "123456")

testuser1.notes.create(title: "hello", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Feugiat nisl pretium fusce id velit. At urna condimentum mattis pellentesque. Sed odio morbi quis commodo.")
testuser1.notes.create(title: "about universe", content: "Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Venenatis urna cursus eget nunc. Quis varius quam quisque id diam vel quam. Nulla porttitor massa id neque aliquam vestibulum. Id interdum velit laoreet id donec ultrices tincidunt arcu. ")
testuser1.notes.create(title: "About God", content: "elementum sagittis vitae et leo. At auctor urna nunc id cursus. Lacinia at quis risus sed vulputate odio ut. Fames ac turpis egestas sed tempus urna et pharetra pharetra. Adipiscing tristique risus nec feugiat in fermentum posuere. Faucibus purus in massa tempor nec feugiat. Ut ornare lectus sit amet est placerat. Et netus et malesuada fames ac. Nisi quis eleifend quam adipiscing.")
testuser1.notes.create(title: "Software", content: "lLaoreet non curabitur gravida arcu ac. Quam adipiscing vitae proin sagittis nisl. Malesuada proin libero nunc consequat interdum varius sit. Eget nullam non nisi est sit amet facilisis magna.")

testuser2.notes.create(title: "Codding", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Feugiat nisl pretium fusce id velit. At urna condimentum mattis pellentesque. Sed odio morbi quis commodo.")
testuser2.notes.create(title: "best books", content: "Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Venenatis urna cursus eget nunc. Quis varius quam quisque id diam vel quam. Nulla porttitor massa id neque aliquam vestibulum. Id interdum velit laoreet id donec ultrices tincidunt arcu. ")
testuser2.notes.create(title: "good times", content: "elementum sagittis vitae et leo. At auctor urna nunc id cursus. Lacinia at quis risus sed vulputate odio ut. Fames ac turpis egestas sed tempus urna et pharetra pharetra. Adipiscing tristique risus nec feugiat in fermentum posuere. Faucibus purus in massa tempor nec feugiat. Ut ornare lectus sit amet est placerat. Et netus et malesuada fames ac. Nisi quis eleifend quam adipiscing.")
testuser2.notes.create(title: "movies", content: "lLaoreet non curabitur gravida arcu ac. Quam adipiscing vitae proin sagittis nisl. Malesuada proin libero nunc consequat interdum varius sit. Eget nullam non nisi est sit amet facilisis magna.")