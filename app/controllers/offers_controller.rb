class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def new
  end

  def create
  end
end
