class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
  end

  def create
  end
end
