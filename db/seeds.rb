# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# TRUNCATE TABLES BEFORE SEEDING.

tables = ["admins", "services", "abouts", "terms"]

tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
end

Admin.create(first_name: "test", last_name: "admin", email: "cashtelex@gmail.com",  password: "Cash@123", password_confirmation: "Cash@123")

ServiceTitles = ["CashTelex Exchange", "CashTelex Go", "CashTelex Real Estate", "CashTelex Gold", "CashTelex Coin"]

ServiceTitles.each do |service_title|
  Service.create(title: service_title, content: Faker::Lorem.paragraph(sentence_count: 2))
end

About.create(title: "About Us", content: Faker::Lorem.paragraph(sentence_count: 2))

Term.create(title: "Terms and Condition", content: Faker::Lorem.paragraph(sentence_count: 2))

puts "Database Seeded Successfully!"