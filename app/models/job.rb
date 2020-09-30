class Job < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  has_many :contractors, through: :bids 

  validates :zipcode, length: { is: 5 }
  validates :description, length: { maximum: 500}
  validates :isComplete, inclusion: { in: [true, false] }
end
