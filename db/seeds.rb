# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning seed'
User.delete_all
Npl.delete_all
# Bid.delete_all

puts 'starting seed (User)'
alan = User.create(email: 'alanmareines@gmail.com', password: '123123')
marco = User.create(email: 'macpjesus@gmail.com', password: '123123')
felipe = User.create(email: 'trocaesseemail@gmail.com', password: '123123')
puts 'finished seed (User)'

puts 'starting seed (NPL)...'
npl_attributes = [
  {
    book_value: 100000,
    debtor: 'Odebrecht',
    maturity_date: Date.new(2018, 12, 20),
    collateral_description: 'Clean',
    min_value: 15000,
    name: 'CCB ODB 1',
    npl_type: 'CCB',
    user: marco,
  },
  {
    book_value: 90000,
    debtor: 'Odebrecht',
    maturity_date: Date.new(2018, 11, 30),
    collateral_description: 'Imovel',
    min_value: 13000,
    name: 'CCB ODB 2',
    npl_type: 'CCB',
    user: alan,
  }
]

Npl.create!(npl_attributes)
puts 'finished seed (NPL)'


# puts 'starting seed (Bids)'
# puts 'finished seed (Bids)'

puts 'seed completed!'
