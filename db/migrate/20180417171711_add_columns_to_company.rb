class AddColumnsToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :bank_account_number, :string
    add_column :companies, :bank_agency, :string
    add_column :companies, :bank_name, :string
  end
end
