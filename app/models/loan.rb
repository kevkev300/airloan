class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :total_price, presence: true, allow_blank: false
  validates :start_date, presence: true, allow_blank: false
  validates :end_date, presence: true, allow_blank: false
  validate :end_date_after_start_date

  def end_date_after_start_date
    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
