class Offer < ApplicationRecord
  belongs_to :user
  has_many :loans
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validations
  validates :currency, presence: true, allow_blank: false
  validates :amount, presence: true, allow_blank: false, numericality: { greater_than: 0 }
  validates :interest, presence: true, allow_blank: false, inclusion: { in: (0..100) }
  validates :description, presence: true, allow_blank: false
  validates :bank_account, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false

  mount_uploader :photo, PhotoUploader
end
