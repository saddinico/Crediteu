class DealsController < ApplicationController


  def index
    @deals = policy_scope(Deal).all
  end

  def show
    @deal = Deal.find(params[:id])
    authorize @deal
  end

  def new
    @deal = Deal.new
    authorize @deal
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.company = current_user.company
    authorize @deal
    if @deal.save
      redirect_to '/deals'
    else
      puts @deal.errors.full_messages
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

private

   def deal_params
    params.require(:deal).permit(:start_date, :end_date, :amount)
  end

end
