# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# truncate table services before seed.
tables = ["services", "abouts", "terms"]

tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
end

ServiceTitles = ["CashTelex Exchange", "CashTelex Go", "CashTelex Real Estate", "CashTelex Gold", "CashTelex Coin"]

ServiceTitles.each do |service_title|
  Service.create(title: service_title, content: Faker::Lorem.paragraph(sentence_count: 2))
end

About.create(title: "About Us", content: Faker::Lorem.paragraph(sentence_count: 2))

Term.create(title: "Terms and Condition", content: Faker::Lorem.paragraph(sentence_count: 2))
