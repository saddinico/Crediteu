class Investor < ApplicationRecord
  belongs_to :user
  has_many :transactions

  validates :first_name, :last_name, :monthly_income, :date_of_birth, :gender,
  :mother_name, :father_name, :phone, :address, :net_worth, presence: true

  validates :cpf, presence: true, uniqueness: true

    after_create :subscribe_to_newsletter

  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self.user).call
  end


end
