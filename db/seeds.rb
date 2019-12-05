# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# DEFGaracter.create(name: 'Luke', movie: movies.first)

puts 'Cleaning seed...'
puts 'Deleting Messages...'
Message.destroy_all
puts 'Deleting DueDiligences...'
DueDiligence.destroy_all
puts 'Deleting Npls...'
Npl.destroy_all
puts 'Deleting Bids...'
Bid.destroy_all
puts 'Deleting Users..V'
User.destroy_all
puts 'seed cleaned!'

puts 'starting seed (User)...'
alan = User.create!(email: 'alanmareines@gmail.com', password: '123123', cpf_cnpj: 12345678900, name: 'Alan', phone: 99999999, admin: 'true')
marco = User.create!(email: 'macpjesus@gmail.com', password: '123123', cpf_cnpj: 12345678900, name: 'Marco', phone: 99999999, admin: 'true' )
felipe = User.create!(email: 'felipegirocha@gmail.com', password: '123123', cpf_cnpj: 12345678900, name: 'Felipe', phone: 99999999, admin: 'true')

usadesco = User.create!(email: 'usadesco@usadesco.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Usadesco', phone: 99999999)
ita2 = User.create!(email: 'ita2@ita2.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Ita2', phone: 99999999)
santoandre = User.create!(email: 'santoandre@santoandre.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Santoandre', phone: 99999999)
defg = User.create!(email: 'defg@defg.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'DEFG', phone: 99999999)
vibra = User.create!(email: 'vibra@vibra.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Vibra', phone: 99999999)
votoranclaro = User.create!(email: 'votoranclaro@votoranclaro.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Votoranclaro', phone: 99999999)
pinheiro = User.create!(email: 'pinheiro@pinheiro.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Pinheiro', phone: 99999999)

recover = User.create!(email: 'recover@recover.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Recover', phone: 99999999)
arpoador = User.create!(email: 'arpoador@arpoador.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'Arpoador', phone: 99999999)
rcbd = User.create!(email: 'rcbd@rcbd.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'RCBD', phone: 99999999)
mgb = User.create!(email: 'mgb@mgb.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'MGB', phone: 99999999)
pnb = User.create!(email: 'pnb@pnb.com.br', password: '123123', cpf_cnpj: 12345678000100, name: 'PNB', phone: 99999999, lawyer: true)


puts 'finished seed (User)!'

puts 'starting seed (NPL)...'
npl_attributes1 = {
    book_value: 100000,
    debtor: 'ODB',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2018, 12, 20),
    collateral_description: 'Clean',
    min_value: 15000,
    name: 'CCB ODB 1',
    npl_type: 'CCB',
    user: usadesco,
    auction_date: Date.new(2019, 12, 20)
  }
  npl_attributes2 = {
    book_value: 90000,
    debtor: 'ODB',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2018, 11, 30),
    collateral_description: 'Debenture',
    min_value: 13000,
    name: 'CCB ODB 2',
    npl_type: 'CCB',
    user: ita2,
    auction_date: Date.new(2019, 12, 20)
  }

npl_attributes3 = {
    book_value: 400000,
    debtor: 'Strong Land',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'Imovel Rural',
    min_value: 150000,
    name: 'CCB Strong Land',
    npl_type: 'CCB',
    user: vibra,
    auction_date: Date.new(2019, 12, 20)
  }

npl_attributes4 = {
    book_value: 800000,
    debtor: 'Good Jesus',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'Imovel Rural',
    min_value: 200000,
    name: 'CCE Good Jesus',
    npl_type: 'CCE',
    user: defg,
    auction_date: Date.new(2019, 12, 20)
  }

npl_attributes5 = {
    book_value: 900000,
    debtor: 'Usina Santa Luzia',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'AF de acoes',
    min_value: 250000,
    name: 'PPE Usina Santa Luzia',
    npl_type: 'PPE',
    user: votoranclaro,
    auction_date: Date.new(2019, 12, 20)
  }

npl_attributes6 = {
    book_value: 950000,
    debtor: 'Queiralco',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'AF de equipamentos',
    min_value: 200000,
    name: 'Repasse BNDES Queiralco',
    npl_type: 'Repasse BNDES',
    user: usadesco,
    auction_date: Date.new(2019, 12, 20)
  }

npl_attributes7 = {
    book_value: 300000,
    debtor: 'Renunca',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'penhor de cana',
    min_value: 30000,
    name: 'CDCA Renunca 1',
    npl_type: 'CDCA',
    user: santoandre,
    auction_date: Date.today + 102
  }

npl_attributes8 = {
    book_value: 350000,
    debtor: 'QG',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'AF de acoes',
    min_value: 220000,
    name: 'Debenture QG',
    npl_type: 'Debenture',
    user: votoranclaro,
    auction_date: Date.today + 23
  }

npl_attributes9 = {
    book_value: 820000,
    debtor: 'Gaviao Engenharia',
    debtor_cpf_cnpj: '99999999999',
    maturity_date: Date.new(2019, 3, 15),
    collateral_description: 'Fianca da holding',
    min_value: 180000,
    name: 'Debenture Gaviao Engenharia 1',
    npl_type: 'Debenture',
    user: defg,
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
bid1.user = recover
bid1.value = 20000
bid1.save!

bid2 = Bid.new
bid2.npl = npl1
bid2.user = arpoador
bid2.value = 19000
bid2.save!

bid3 = Bid.new
bid3.npl = npl2
bid3.user = arpoador
bid3.value = 14500
bid3.save!

bid4 = Bid.new
bid4.npl = npl2
bid4.user = mgb
bid4.value = 16999
bid4.save!

bid5 = Bid.new
bid5.npl = npl3
bid5.user = rcbd
bid5.value = 150000
bid5.save!

bid6 = Bid.new
bid6.npl = npl3
bid6.user = mgb
bid6.value = 160000
bid6.save!

bid7 = Bid.new
bid7.npl = npl3
bid7.user = recover
bid7.value = 250000
bid7.save!

bid8 = Bid.new
bid8.npl = npl3
bid8.user = arpoador
bid8.value = 200000
bid8.save!

bid9 = Bid.new
bid9.npl = npl3
bid9.user = defg
bid9.value = 180000
bid9.save!

bid10 = Bid.new
bid10.npl = npl3
bid10.user = pinheiro
bid10.value = 1000000
bid10.save!

bid11 = Bid.new
bid11.npl = npl4
bid11.user = recover
bid11.value = 300000
bid11.save!

bid12 = Bid.new
bid12.npl = npl5
bid12.user =  mgb
bid12.value = 280000
bid12.save!

bid13 = Bid.new
bid13.npl = npl6
bid13.user = arpoador
bid13.value = 220000
bid13.save!

bid14 = Bid.new
bid14.npl = npl7
bid14.user = recover
bid14.value = 33000
bid14.save!

bid15 = Bid.new
bid15.npl = npl8
bid15.user = rcbd
bid15.value = 240000
bid15.save!

bid16 = Bid.new
bid16.npl = npl8
bid16.user =  mgb
bid16.value = 240000
bid16.save!

bid17 = Bid.new
bid17.npl = npl9
bid17.user = recover
bid17.value = 240000
bid17.save!

bid18 = Bid.new
bid18.npl = npl9
bid18.user = arpoador
bid18.value = 250000
bid18.save!

bid19 = Bid.new
bid19.npl = npl5
bid19.user = recover
bid19.value = 280000
bid19.save!

bid20 = Bid.new
bid20.npl = npl6
bid20.user =  mgb
bid20.value = 220000
bid20.save!

puts 'finished seed (Bids)'

puts 'seed completed!'
