class AddDefaultStatusToDeals < ActiveRecord::Migration[5.1]
  def change
    change_column_default :deals, :status, 'pending'
  end
end
