class InvestorsController < ApplicationController


  def new
    @investor = investor.new
  end

  def create

  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  private

  def investor_params
    params.require(:user).permit(:first_name, :last_name, :monthly_income, :cpf, :date_of_birth,
      :gender, :mother_name, :father_name, :phone, :address, :net_worth)
  end

end
