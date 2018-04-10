class RemoveMaturityFromDeals < ActiveRecord::Migration[5.1]
  def change
    remove_column :deals, :maturity
  end
end
