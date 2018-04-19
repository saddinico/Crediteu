# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Please wait while the seeds load..."

puts "-"


  10.times do |x|
    user = User.create!(email: Faker::Internet.email, password: "123456")
      Investor.create!(user_id: user.id,
                      first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      monthly_income: Faker::Number.between(20000, 200000),
                      cpf: Faker::Number.number(11),
                      date_of_birth: Faker::Date.between(80.years.ago, 20.years.ago),
                      gender: ["male", "female", "trans"].sample,
                      mother_name: Faker::Name.name,
                      father_name: Faker::Name.name,
                      phone:Faker::PhoneNumber.cell_phone,
                      address:Faker::Address.street_address,
                      net_worth:Faker::Number.between(1000000, 10000000)
                      )
  end


user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 11,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Le Wagon',
                     address: '495 Visconde de Piraja Avenue, Rio de Janeiro - RJ, 22410-002',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: 'Pedro',
                     manager_last_name: 'Meier',
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: 'pedro@lewagon.org',
                     company_description: 'Le Wagon é uma escola de programação para startups, pessoas criativas e empreendedores.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'www.lewagon.com',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: 'Expansão',
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631739/le-wagon-logo.png',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Casado',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Leblon',
                     bank_name: 'Itau'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 12,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Lev',
                     address: 'Av. General Polidoro, 59, Botafogo, RJ',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'uma empresa carioca que e pioneira na fabricação e comercialização de bicicletas elétricas no Brasil.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'www.golev.com.br',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: 'compra de matéria prima',
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631650/mcwlzwfuy3jygdjqdl4q.jpg',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Casado',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Botafogo',
                     bank_name: 'Citi'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 13,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Longarina',
                     address: 'R. Maria Luíza Pitanga, 163 - Barra da Tijuca, Rio de Janeiro - RJ, 22611-190',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'Surfshop para mulheres',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'http://longarina.com',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: 'Abrir nova loja',
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631676/iSUBSRk.png',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Solteiro',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Barra de Tijuca',
                     bank_name: 'Banco do Brazil'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 14,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Brownie do Luiz',
                     address: 'Rua das Laranjeiras, 103 - loja A, RJ',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'O Brownie do Luiz é a melhor mistura de cacau com felicidade.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'http://browniedoluiz.com.br',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: 'expansão internacional',
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631697/brownie-do-luiz-logo-300x300.png',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Solteiro',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Laranjeiras',
                     bank_name: 'Santander'
                     )


user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 15,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Polis Sucos',
                     address: ' R. Maria Quitéria, 70 - Ipanema, Rio de Janeiro - RJ, 22410-040',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'Das casas de sucos mais antigas da cidade, a Polis é uma das poucas em que o suco é feito com a própria fruta, não com a polpa congelada.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'www.polissucos.com.br/en',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: 'aquisição',
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631624/18935-polis-sucos.jpg',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Casado',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Leblon',
                     bank_name: 'Santander'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 16,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'City Model Ipanema',
                     address: '495 Visconde de Piraja Avenue, Rio de Janeiro - RJ, 22410-002',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'A City Models é uma das melhores agência de modelos direcionada à carreira de modelos comerciais, fashions, artistas, celebridades e Digital influencias.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'www.citymodels.com.br',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631580/XvjOuM9t_400x400.jpg',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Solteiro',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Ipanema',
                     bank_name: 'Bradesco'
                     )


user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 16,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'City Model Ipanema',
                     address: '495 Visconde de Piraja Avenue, Rio de Janeiro - RJ, 22410-002',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'A City Models é uma das melhores agência de modelos direcionada à carreira de modelos comerciais, fashions, artistas, celebridades e Digital influencias.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: 'www.citymodels.com.br',
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631580/XvjOuM9t_400x400.jpg',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Solteiro',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Ipanema',
                     bank_name: 'Bradesco'
                     )

user = User.create!(email: 'andrezra@gmail.com', password: "123456")
      Company.create!(user_id: 17,
                     date_of_foundation: '20/11/2015',
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Burguês',
                     address: 'R. Afonso Pena, 43 - Tijuca, Rio de Janeiro - RJ, 20270-242',
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: 'Andre',
                     manager_last_name: 'Rache',
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'Um hamburger feito com amor e bom humor',
                     current_billing: 200000,
                     website: 'www.burgues.com.br',
                     number_of_employees: 3,
                     use_of_proceeds: 'Abrir um novo restaurante na Zona Sul',
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523647635/burger-logo_1366-144.jpg',
                     manager_RG: Faker::Number.number(11),
                     manager_civil_status: 'Solteiro',
                     manager_address: Faker::Address.street_address,
                     bank_account_number: Faker::Number.number(10),
                     bank_agency: 'Copacabana',
                     bank_name: 'Santander'
                     )

Deal.create!(company_id: 2,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 1000000,
              rate_per_annum: 20,
              credit_rateing: 'BB',
              status: 'live',
              )

Deal.create!(company_id: 3,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 100000,
              rate_per_annum: 26,
              credit_rating: 'B',
              status: 'live',
              )

Deal.create!(company_id: 7,
              start_date: '19/04/2018',
              end_date: '19/04/2019',
              amount: 100000,
              rate_per_annum: 27,
              credit_rating: 'C',
              status: 'live',
              )

Deal.create!(company_id: 6,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 175000,
              rate_per_annum: 28,
              credit_rating: 'CC',
              status: 'live',
              )

Deal.create!(company_id: 4,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 250000,
              rate_per_annum: 30,
              credit_rating: 'CCC',
              status: 'live',
              )

Deal.create!(company_id: 1,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 600000,
              rate_per_annum: 16,
              credit_rating: 'A',
              status: 'coming soon',
              )

Deal.create!(company_id: 5,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 300000,
              rate_per_annum: 19,
              credit_rating: 'BBB',
              status: 'coming soon',
              )


20.times do |x|

  Transaction.create!(investor_id: (1..10).to_a.sample,
                     deal_id: [3, 4, 6].sample,
                     participation: [2000, 4000, 8000].sample,
                     )
end



puts "Done!"
