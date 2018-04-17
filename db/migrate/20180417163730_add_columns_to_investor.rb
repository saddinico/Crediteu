class AddColumnsToInvestor < ActiveRecord::Migration[5.1]
  def change
    add_column :investors, :civil_status, :string
    add_column :investors, :job, :string
    add_column :investors, :RG, :integer
    add_column :investors, :bank_account_number, :string
    add_column :investors, :bank_agency, :string
    add_column :investors, :bank_name, :string
  end
end
