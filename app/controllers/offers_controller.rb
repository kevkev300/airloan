class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query]
      @offers = Offer.near(params[:query])
    else
      @offers = Offer.geocoded
    end
    @markers = @offers.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url('https://res.cloudinary.com/kl3000/image/upload/v1575565500/fontawesome-dollar-solid_uj4aat.svg')
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @markers = [
      {
        lat: @offer.latitude,
        lng: @offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: @offer }),
        image_url: helpers.asset_url('https://res.cloudinary.com/kl3000/image/upload/v1575565500/fontawesome-dollar-solid_uj4aat.svg')
      }
    ]
    @loan = Loan.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:currency, :amount, :interest, :description, :bank_account, :address, :photo)
  end
end
