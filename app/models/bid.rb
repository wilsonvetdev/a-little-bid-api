class Bid < ApplicationRecord
  belongs_to :contractor
  belongs_to :job

  validates :bid_amount, presence: true
  validates :comment, presence: true, length: { maximum: 500 }
  validates :isAccepted, inclusion: { in: [true, false] }
end
