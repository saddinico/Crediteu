class CompaniesController < ApplicationController

  before_action :set_company, only: [:show, :edit, :destroy, :update]

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

    if @company.update(company_params)

    else
      puts "=================="
      puts @company.errors.full_messages
      puts "=================="
      render :new
    end
  end

  def destroy
    @company.destroy
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:legal_name, :address, :cnpj, :date_of_foundation, :phone, :manager_first_name, :manager_last_name, :manager_cpf, :manager_phone, :manager_email, :company_description, :current_billing, :website, :number_of_employees, :use_of_proceeds)
  end
end