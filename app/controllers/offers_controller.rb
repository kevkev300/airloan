class OffersController < ApplicationController
  def index
  end

  def new
    @offer = Offer.new
  end

  def create
    # !!!!!need to change 'user_id: 1' to current_user once login is up!!!!!
    @offer = Offer.new(offer_params.merge({ user_id: 1 }))
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:currency, :amount, :interest, :description, :bank_account, :address, :photo)
  end
end
