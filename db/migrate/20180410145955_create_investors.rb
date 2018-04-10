class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.string :monthly_income
      t.string :cpf
      t.string :date_of_birth
      t.references :user, foreign_key: true
      t.string :gender
      t.string :mother_name
      t.string :father_name
      t.string :phone
      t.string :address
      t.string :net_worth

      t.timestamps
    end
  end
end
