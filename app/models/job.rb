class Job < ApplicationRecord
  belongs_to :user
  has_many :bids
  has_many :contractors, through: :bids 

  validates :zipcode, length: { is: 5 }
  validates :description, length: { maximum: 500}
end
