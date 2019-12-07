class UsersController < ApplicationController
  def show
    @has_loan_request = has_loan_request
  end

  private

  def has_loan_request
    current_user.offers.any? do |offer|
      offer.loans.count > 0
    end
  end
end
