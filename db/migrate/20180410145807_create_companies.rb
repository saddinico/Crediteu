class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.references :user, foreign_key: true
      t.date :date_of_foundation
      t.string :cnpj
      t.string :legal_name
      t.text :address
      t.string :phone
      t.string :manager_first_name
      t.string :manager_last_name
      t.string :manager_cpf
      t.string :manager_phone
      t.string :manager_email
      t.text :company_description
      t.string :current_billing
      t.string :website
      t.integer :number_of_employees
      t.string :use_of_proceeds

      t.timestamps
    end
  end
end
