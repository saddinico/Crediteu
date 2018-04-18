class CompaniesController < ApplicationController

  before_action :set_company, only: [:show, :edit, :destroy, :update]

  def index
    @companies = policy_scope(Company).all
  end

  def new
    @company = Company.new
    authorize @company
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    authorize @company
    if @company.save
       redirect_to '/deals'
    else
      puts "=================="
      puts @company.errors.full_messages
      puts "=================="
      redirect_to new_company_path(current_user)
    end
  end

  def show

  end

  def edit
    authorize @company
  end

  def update
    authorize @company
    if @company.update(company_params)
      redirect_to companies_path(@company)
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
    params.require(:company).permit(:legal_name, :address, :cnpj, :date_of_foundation,
      :phone, :manager_first_name, :manager_last_name, :manager_cpf, :manager_phone,
      :manager_email, :company_description, :current_billing, :website,
      :number_of_employees, :use_of_proceeds, :bank_account_number, :bank_agency,
      :bank_name, :manager_civil_status, :manager_RG, :manager_address)
  end
end

