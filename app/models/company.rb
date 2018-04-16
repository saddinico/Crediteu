class Company < ApplicationRecord
  belongs_to :user
  has_many :deals
  has_many :transactions, through: :deals

  validates :legal_name, :cnpj, presence: true, uniqueness: true
  validates :address, :phone, :manager_first_name, :manager_last_name, :manager_cpf,
  :manager_email, :manager_phone, :current_billing, :company_description, :use_of_proceeds,
  :number_of_employees, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
