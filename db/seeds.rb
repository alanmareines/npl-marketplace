# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning seed...'
puts 'Deleting Messages...'
Message.destroy_all
puts 'Deleting DueDiligences...'
DueDiligence.destroy_all
puts 'Deleting Npls...'
Npl.destroy_all
puts 'Deleting Bids...'
Bid.destroy_all
puts 'Deleting Users...'
User.destroy_all
puts 'seed cleaned!'

puts 'starting seed (User)...'
alan = User.create!(email: 'alanmareines@gmail.com', password: '123123', cpf_cnpj: 11111111111, name: 'Alan', phone: 99999999, admin: 'true')
marco = User.create!(email: 'macpjesus@gmail.com', password: '123123', cpf_cnpj: 11111111111, name: 'Marco', phone: 99999999, admin: 'true' )
felipe = User.create!(email: 'felipegirocha@gmail.com', password: '123123', cpf_cnpj: 11111111111, name: 'Felipe', phone: 99999999, admin: 'true')

bradesco = User.create!(email: 'bradesco@bradesco.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Bradesco', phone: 99999999)
itau = User.create!(email: 'itau@itau.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Itau', phone: 99999999)
santander = User.create!(email: 'santander@santander.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Santander', phone: 99999999)
abc = User.create!(email: 'abc@abc.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'ABC', phone: 99999999)
fibra = User.create!(email: 'fibra@fibra.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Fibra', phone: 99999999)
votorantim = User.create!(email: 'votorantim@votorantim.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Votorantim', phone: 99999999)
pine = User.create!(email: 'pine@pine.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'pine', phone: 99999999)

recovery = User.create!(email: 'recovery@recovery.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Recovery', phone: 99999999)
jive = User.create!(email: 'jive@jive.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Jive', phone: 99999999)
enforce = User.create!(email: 'enforce@enforce.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Enforce', phone: 99999999)
rcb = User.create!(email: 'rcb@rcb.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'RCB', phone: 99999999)
brd = User.create!(email: 'brd@brd.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'BrD', phone: 99999999)
mgc = User.create!(email: 'mgc@mgc.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'MGC', phone: 99999999)
pna = User.create!(email: 'pna@pna.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'PNA', phone: 99999999, lawyer: true)
blackpartners = User.create!(email: 'blackpartners@blackpartners.com.br', password: '123123', cpf_cnpj: 11111111111, name: 'Black Partners', phone: 99999999)

puts 'finished seed (User)!'

puts 'starting seed (NPL)...'
npl_attributes1 = {
    book_value: 100000,
    debtor: 'Odebrecht',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2018, 12, 20),
    collateral_description: 'Clean',
    min_value: 15000,
    name: 'CCB ODB 1',
    npl_type: 'CCB',
    user: bradesco,
    auction_date: Date.today + 10
  }
  npl_attributes2 = {
    book_value: 90000,
    debtor: 'Odebrecht',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2018, 11, 30),
    collateral_description: 'Debenture',
    min_value: 13000,
    name: 'CCB ODB 2',
    npl_type: 'CCB',
    user: itau,
    auction_date: Date.today + 12
  }

npl_attributes3 = {
    book_value: 400000,
    debtor: 'Terra Forte',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'Imovel Rural',
    min_value: 150000,
    name: 'CCB Terra Forte 1',
    npl_type: 'CCB',
    user: fibra,
    auction_date: Date.today + 13
  }

npl_attributes4 = {
    book_value: 800000,
    debtor: 'Bom Jesus',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'Imovel Rural',
    min_value: 200000,
    name: 'CCE Bom Jesus 1',
    npl_type: 'CCE',
    user: abc,
    auction_date: Date.today + 7
  }

npl_attributes5 = {
    book_value: 900000,
    debtor: 'Santa Terezinha',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'AF de acoes',
    min_value: 250000,
    name: 'PPE Santa Terezinha 1',
    npl_type: 'PPE',
    user: votorantim,
    auction_date: Date.today + 18
  }

npl_attributes6 = {
    book_value: 950000,
    debtor: 'Clealco',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'AF de equipamentos',
    min_value: 200000,
    name: 'Repasse BNDES Clealco 1',
    npl_type: 'Repasse BNDES',
    user: bradesco,
    auction_date: Date.today + 39
  }

npl_attributes7 = {
    book_value: 300000,
    debtor: 'Renuka',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'penhor de cana',
    min_value: 30000,
    name: 'CDCA Renuka 1',
    npl_type: 'CDCA',
    user: santander,
    auction_date: Date.today + 102
  }

npl_attributes8 = {
    book_value: 350000,
    debtor: 'Queiroz Galvao',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'AF de acoes',
    min_value: 220000,
    name: 'Debenture Queiroz Galvao 1',
    npl_type: 'Debenture',
    user: votorantim,
    auction_date: Date.today + 23
  }

npl_attributes9 = {
    book_value: 820000,
    debtor: 'Galvao Engenharia',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'Fianca da holding',
    min_value: 180000,
    name: 'Debenture Galvao Engenharia 1',
    npl_type: 'Debenture',
    user: abc,
    auction_date: Date.today + 63
  }

url1 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571626073/vuy7pfkesk0qwp5rblem.pdf'
npl1 = Npl.new(npl_attributes1)
npl1.remote_document_url = url1
npl1.save!

url2 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl2 = Npl.new(npl_attributes2)
npl2.remote_document_url = url2
npl2.save!

url3 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl3 = Npl.new(npl_attributes3)
npl3.remote_document_url = url3
npl3.save!

url4 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl4 = Npl.new(npl_attributes4)
npl4.remote_document_url = url4
npl4.save!

url5 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl5 = Npl.new(npl_attributes5)
npl5.remote_document_url = url5
npl5.save!

url6 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl6 = Npl.new(npl_attributes6)
npl6.remote_document_url = url6
npl6.save!

url7 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl7 = Npl.new(npl_attributes7)
npl7.remote_document_url = url7
npl7.save!

url8 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl8 = Npl.new(npl_attributes8)
npl8.remote_document_url = url8
npl8.save!

url9 = 'https://res.cloudinary.com/alanmareines/image/upload/v1571623608/d9s9xs4epc8mxj4wd4yy.pdf'
npl9 = Npl.new(npl_attributes9)
npl9.remote_document_url = url9
npl9.save!

puts 'finished seed (NPL)!'


puts 'starting seed (Bids)...'
bid1 = Bid.new
bid1.npl = npl1
bid1.user = enforce
bid1.value = 20000
bid1.save!

bid2 = Bid.new
bid2.npl = npl1
bid2.user = jive
bid2.value = 19000
bid2.save!

bid3 = Bid.new
bid3.npl = npl2
bid3.user = jive
bid3.value = 14500
bid3.save!

bid4 = Bid.new
bid4.npl = npl2
bid4.user = brd
bid4.value = 16999
bid4.save!

bid5 = Bid.new
bid5.npl = npl3
bid5.user = brd
bid5.value = 150000
bid5.save!

bid6 = Bid.new
bid6.npl = npl3
bid6.user = blackpartners
bid6.value = 160000
bid6.save!

bid7 = Bid.new
bid7.npl = npl3
bid7.user = mgc
bid7.value = 250000
bid7.save!

bid8 = Bid.new
bid8.npl = npl3
bid8.user = jive
bid8.value = 200000
bid8.save!

bid9 = Bid.new
bid9.npl = npl3
bid9.user = enforce
bid9.value = 180000
bid9.save!

bid10 = Bid.new
bid10.npl = npl3
bid10.user = rcb
bid10.value = 1000000
bid10.save!

bid11 = Bid.new
bid11.npl = npl4
bid11.user = blackpartners
bid11.value = 300000
bid11.save!

bid12 = Bid.new
bid12.npl = npl5
bid12.user = mgc
bid12.value = 280000
bid12.save!

bid13 = Bid.new
bid13.npl = npl6
bid13.user = jive
bid13.value = 220000
bid13.save!

bid14 = Bid.new
bid14.npl = npl7
bid14.user = enforce
bid14.value = 33000
bid14.save!

bid15 = Bid.new
bid15.npl = npl8
bid15.user = rcb
bid15.value = 240000
bid15.save!

bid16 = Bid.new
bid16.npl = npl9
bid16.user = enforce
bid16.value = 240000
bid16.save!

bid17 = Bid.new
bid17.npl = npl9
bid17.user = jive
bid17.value = 250000
bid17.save!

puts 'finished seed (Bids)'

puts 'seed completed!'
