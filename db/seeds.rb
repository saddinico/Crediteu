# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Please wait while the seeds load..."

puts "-"


  20.times do |x|
    user = User.create!(email: Faker::Internet.email, password: "123456")
    if x.odd?
      Company.create!(user_id: user.id,
                     date_of_foundation: Faker::Date.between(9.years.ago, 1.year.ago),
                     cnpj: Faker::Number.number(14),
                     legal_name: Faker::Company.name,
                     address: Faker::Address.street_address,
                     phone: Faker::PhoneNumber.cell_phone,
                     manager_first_name: Faker::Name.first_name,
                     manager_last_name: Faker::Name.last_name,
                     manager_cpf: Faker::Number.number(11),
                     manager_phone: Faker::PhoneNumber.cell_phone,
                     manager_email: Faker::Internet.email,
                     company_description: Faker::Company.catch_phrase + ": " +Faker::TwinPeaks.quote,
                     current_billing: Faker::Number.between(100000, 1000000),
                     website: "www." + Faker::Internet.domain_name,
                     number_of_employees: Faker::Number.between(1, 40),
                     use_of_proceeds: Faker::Company.bs
                     )
        else x.even?
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
  end



9.times do |x|
  Deal.create(company_id: x + 1,
              start_date: Faker::Date.between(100.days.ago, 21.days.ago),
              end_date: Faker::Date.between(20.days.ago, Date.today),
              amount: Faker::Number.between(25000, 1000000),
              rate_per_annum: Faker::Number.between(15, 25).to_s + "," + "#{(0..100).to_a.sample}",
              credit_rating: ['AAA', 'AA', 'A', 'BBB', 'BB', 'B', 'CCC', 'CC', 'C', 'D'].sample,
              status: ["pending" ,"coming soon", "completed", "live"].sample,
              )
end


20.times do |x|

  Transaction.create(investor_id: (1..10).to_a.sample,
                     deal_id: (1..9).to_a.sample,
                     participation: [2000, 4000, 8000].sample,
                     )
end

puts "Done!"
