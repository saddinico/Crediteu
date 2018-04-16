class DealsController < ApplicationController


  def index
    @deals = Deal.all
  end

  def show
    @deal = Deal.find(params[:id])

    @company = @deal.company

    if @company.latitude && @company.longitude
      @markers = [@company].map do |company|
        {
          lat: company.latitude,
          lng: company.longitude,
        }
      end
    end
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.company = current_user.company
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
