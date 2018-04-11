class TransactionsController < ApplicationController

  before_action :set_transaction, only: [:edit, :destroy, :update]

  def new
    @transaction = Transaction.new
    @deal = Deal.find(params[:deal_id])
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.deal_id = params[:deal_id]
    @transaction.investor_id = current_user.investor.id
    @transaction.save
  end

  def edit
    @deal = Deal.find(params[:deal_id])
  end

  def update
    @transaction.update(transaction_params)
    raise
  end

  def destroy
    @transaction.destroy
  end

  private

  def transaction_params
    params.require(:transaction).permit(:participation)
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
