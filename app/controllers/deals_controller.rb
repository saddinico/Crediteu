class DealsController < ApplicationController


  def index
    @deals = Deal.all
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
    @deal.company = current_user.company
  end

  def create
    @deal = Deal.new(deal_params)
    if @deal.save
      redirect_to '/deals'
    else
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
