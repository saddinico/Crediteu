class InvestorsController < ApplicationController

  before_action :set_investor, only: [:show, :edit, :destroy ]

  def new
    @investor = Investor.new
    authorize @investor
  end

  def create
    @investor = Investor.new(investor_params)
    @investor.user = current_user
    authorize @investor
     if @investor.save
      redirect_to '/deals'
    else
      render 'new'
    end
  end

  def edit
    authorize @investor
  end

  def update
    authorize @investor
    if @investor.update(investor_params)
     redirect_to '/'
    else
     render 'edit'
   end
  end

  def index
    @investor = policy_scope(Investor).all
  end

  def destroy
    authorize @investor
    @investor.destroy
  end

  private

  def set_investor
    @investor = Investor.where(user_id: params[:id]).last
  end

  def investor_params
    params.require(:investor).permit(:first_name, :last_name, :monthly_income, :cpf, :date_of_birth,
      :gender, :mother_name, :father_name, :phone, :address, :net_worth)
  end

end
