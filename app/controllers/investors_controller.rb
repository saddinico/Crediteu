class InvestorsController < ApplicationController

  before_action :set_investor, only: [:show, :edit, :destroy]

  def new
    @investor = Investor.new
  end

  def create
    @investor = Investor.new(investor_params)
    @investor.user = current_user
     if @investor.save
      redirect_to investors_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @investor = Investor.update(investor_params)
  end

  def index
  end

  def destroy
  end

  private

  def set_investor
    @investor = Investor.find(params[:id])
  end

  def investor_params
    params.require(:investor).permit(:first_name, :last_name, :monthly_income, :cpf, :date_of_birth,
      :gender, :mother_name, :father_name, :phone, :address, :net_worth)
  end

end
