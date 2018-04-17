class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :simulation]

  def home
  end

  def simulation
  end
end
