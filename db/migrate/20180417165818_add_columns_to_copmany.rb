class AddColumnsToCopmany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :manager_civil_status, :string
    add_column :companies, :manager_RG, :integer
    add_column :companies, :manager_address, :string
  end
end


