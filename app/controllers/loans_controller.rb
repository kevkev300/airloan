
class LoansController < ApplicationController
  def index
  end

  def create
    loan = Loan.new(params_loan)
    raise
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
    params.require(:loan).permit(:start_date, :end_date, :total_price)
  end
end
