class ChangeManagerRgToBeStringInCompanies < ActiveRecord::Migration[5.1]
  def change
    change_column :companies, :manager_RG, :string
  end
end
