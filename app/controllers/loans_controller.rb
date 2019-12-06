
class LoansController < ApplicationController
  def index
  end

  def create
    @loan = Loan.new(params_loan)
    @loan.user = current_user
    @offer = Offer.find(params[:offer_id])
    @loan.offer = @offer
    @loan.total_price = total_price(@loan)

    if @loan.save
      redirect_to offers_path
    else
      render "offers/show"
    end
  end

  def accepted
    loan = find_loan
    loan.status = "accepted"
    loan.save!
    redirect_to user_path(current_user)
  end

  def declined
    loan = find_loan
    loan.status = "declined"
    loan.save!
    redirect_to user_path(current_user)
  end

  private

  def find_loan
    Loan.find(params[:id])
  end

  def params_loan
    params.require(:loan).permit(:start_date, :end_date, :seeker_bank_account)
  end

  def total_price(loan)
    amount = loan.offer.amount
    year_interest = loan.offer.interest.to_f / 100
    days = (loan.end_date - loan.start_date).to_f

    day_interest = year_interest / 365
    day_price = day_interest * amount

    return (days * day_price).round
  end
end
