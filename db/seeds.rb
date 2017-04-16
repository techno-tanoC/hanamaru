# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'factory_girl'

Dir[Rails.root.join('spec/factories/**/*.rb')].each { |f| require f }

Rake::Task["db:migrate:reset"].invoke

Item.create(title: "item1", url: "url1", archived: false, tag_list: "a,b,c")
Item.create(title: "item2", url: "url2", archived: false, tag_list: "a,b,c")
