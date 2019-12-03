class OffersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
