class OffersController < ApplicationController
  def index
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params.merge({ user_id: 1 }))
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:amount, :interes, :description, :bank_account, :address)
  end
end
