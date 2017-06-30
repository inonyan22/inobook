# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |n|
    user_id = "1"
    title = Faker::Cat.name
    content = Faker::Cat.registry
    Topic.create!(
    user_id: user_id,
    title: title,
    content: content
)
end
