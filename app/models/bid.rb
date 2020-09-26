class Bid < ApplicationRecord
  belongs_to :contractor
  belongs_to :job

  validates :bid_amount, :comment, presense: true
  validates :comment, length: { maximum: 500 }
end
