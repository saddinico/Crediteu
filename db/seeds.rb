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
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'Le Wagon é uma escola de programação para startups, pessoas criativas e empreendedores.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631739/le-wagon-logo.png'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 12,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Lev',
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'uma empresa carioca que e pioneira na fabricação e comercialização de bicicletas elétricas no Brasil.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631650/mcwlzwfuy3jygdjqdl4q.jpg'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 13,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Longarina',
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'Surfshop para mulheres',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631676/iSUBSRk.png'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 14,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Brownie do Luiz',
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'O Brownie do Luiz é a melhor mistura de cacau com felicidade.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631697/brownie-do-luiz-logo-300x300.png'
                     )


user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 15,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'Polis Sucos',
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'Das casas de sucos mais antigas da cidade, a Polis é uma das poucas em que o suco é feito com a própria fruta, não com a polpa congelada.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631624/18935-polis-sucos.jpg'
                     )

user = User.create!(email: Faker::Internet.email, password: "123456")
      Company.create!(user_id: 16,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: 'City Model Ipanema',
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: 'A City Models é uma das melhores agência de modelos direcionada à carreira de modelos comerciais, fashions, artistas, celebridades e Digital influencias.',
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs,
                     photo: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1523631580/XvjOuM9t_400x400.jpg'
                     )


 Deal.create!(company_id: 1,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 600000,
              rate_per_annum: 16,
              credit_rating: 'A',
              status: 'coming soon',
              )

  Deal.create!(company_id: 2,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 1000000,
              rate_per_annum: 20,
              credit_rating: 'BB',
              status: 'completed',
              )

   Deal.create!(company_id: 3,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 100000,
              rate_per_annum: 26,
              credit_rating: 'B',
              status: 'live',
              )

    Deal.create!(company_id: 4,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 250000,
              rate_per_annum: 28,
              credit_rating: 'CCC',
              status: 'live',
              )

     Deal.create!(company_id: 5,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 300000,
              rate_per_annum: 19,
              credit_rating: 'BBB',
              status: 'coming soon',
              )

      Deal.create!(company_id: 6,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(200.days.from_now, 500.days.from_now),
              amount: 175000,
              rate_per_annum: 30,
              credit_rating: 'CC',
              status: 'live',
              )



20.times do |x|

  Transaction.create!(investor_id: (1..10).to_a.sample,
                     deal_id: [3, 4, 6].sample,
                     participation: [2000, 4000, 8000].sample,
                     )
end

Transaction.create!(investor_id: (1..10).to_a.sample,
                     deal_id: 2 ,
                     participation: 1000000,
                     )

puts "Done!"
