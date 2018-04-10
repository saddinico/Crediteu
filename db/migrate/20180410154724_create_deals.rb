class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.references :company, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :amount
      t.integer :rate_per_annum
      t.string :credit_rating
      t.integer :maturity
      t.string :status

      t.timestamps
    end
  end
end
