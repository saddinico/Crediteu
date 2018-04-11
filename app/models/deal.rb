require 'date'

class Deal < ApplicationRecord
  belongs_to :company
  has_many :transactions, dependent: :destroy
  has_many :investors, through: :transactions

  validates :amount, :start_date, :end_date, presence: true
  validates :status, presence: true, inclusion: { in: ['pending' ,'coming soon', 'live', 'completed'] }

  def maturity
    maturity = (self.end_date - self.start_date).to_i
  end

end
