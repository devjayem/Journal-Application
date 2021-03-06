# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do |i|
    User.create(email: "user-#{i+1}@examples.com", password: "password",password_confirmation: "password")
end

User.all.each do |u|
    3.times do |i|
        u.tasks.create(title: "Task #{i+1}", description: "Descrption of task #{i+1}", deadline: "2021-05-05", complete: i % 3 == 0 ? true : false )
    end
end