class Offer < ApplicationRecord
  belongs_to :user
  has_many :loans

  mount_uploader :photo, PhotoUploader
end
