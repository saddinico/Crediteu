class TransactionsController < ApplicationController

  before_action :set_transaction, only: [:edit, :destroy, :update, :contract]

  def new
    @transaction = Transaction.new
    @deal = Deal.find(params[:deal_id])
    authorize @transaction
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @deal = Deal.find(params[:deal_id])
    authorize @transaction

    @transaction.deal_id = @deal.id
    @transaction.investor_id = current_user.investor.id

    if @transaction.save
      redirect_to investors_path(@investor) # Change it later
    else
      render :new
    end
  end

  def edit
    @deal = Deal.find(params[:deal_id])
  end

  def update
    @transaction.update(transaction_params)
  end

  def destroy
    @transaction.destroy
  end

  def contract
    authorize @transaction
    respond_to do |format|
      format.pdf do
        render pdf: "contract",
        template: 'transactions/contract.html.erb'   # Excluding ".pdf" extension.
      end
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:participation)
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
