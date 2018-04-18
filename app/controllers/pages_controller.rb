class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :simulation]

  def home
  end

  def simulation
  end

  def admin
    authorize :page, :admin?
    @deals = Deal.all
    @transactions = Transaction.all
  end
end
