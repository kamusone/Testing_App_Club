# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke' movie: movies.first)
#User.create(first_name: "Michael",last_name:"hart",email: "mhartl@example.com", password: "foobar", password_confirmation: "foobar")
# User.create!([{
 #  first_name: "Michael",
 #   last_name: "hart",
 #   email: mhartl@google.com,
 #   password: foobar,
 #   password_confirmation: foobar
 #
 #
 # },
 # {
 #   first_name: "Michael1",
 #    last_name: "hart1",
 #    email: mhart1l@google.com,
 #    password: foobar1,
 #    password_confirmation: foobar1
 #
 # },
 # {
 #   first_name: "Michael2",
 #    last_name: "hart2",
 #    email: mhartl2@gg.com,
 #    password: mhartl2@gg.com,
 #    password_confirmation: foobar2
 #
 # },
 # {
 #   first_name: "Michael3",
 #    last_name: "hart3",
 #    email: mhartl3@gg.com,
 #    password: foobar3,
 #    password_confirmation: foobar3
 #
 #
 # },
 # {
 #   first_name: "Michael4",
 #    last_name: "hart4",
 #    email: mhartl4@gg.com,
 #    password: foobar4,
 #    password_confirmation: foobar4
 # }])

 User.create(
   first_name: "Michael",
    last_name: "hart",
    email: "mhartl@google.com",
    password: "foobar",
    password_confirmation: "foobar"
)
