class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :investor, foreign_key: true
      t.references :deal, foreign_key: true
      t.integer :participation

      t.timestamps
    end
  end
end
