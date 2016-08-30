# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Claim.delete_all
Company.delete_all
User.delete_all
users = []
30.times do |i|
  users << User.create!(email: "correo-#{i+1}@correo.com", password: 123456)
end

companies = []

20.times do |i|
  companies << Company.create!(name: "Comany-#{i+1}", description: "bla  blablalalalbalblaba")
end

250.times do |i|
  Claim.create!(description: "reclamo-#{i+1}", user: users.sample, company: companies.sample)
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')