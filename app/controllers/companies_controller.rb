class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save

    else
      puts "=================="
      puts @company.errors.full_messages
      puts "=================="
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def company_params
    params.require(:company).permit(:legal_name, :address, :cnpj, :date_of_foundation, :phone, :manager_first_name, :manager_last_name, :manager_cpf, :manager_phone, :manager_email, :company_description, :current_billing, :website, :number_of_employees, :use_of_proceeds)
  end
end
