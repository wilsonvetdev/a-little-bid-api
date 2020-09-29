class Contractor < ApplicationRecord
    has_many :feedbacks
    has_many :bids
    has_many :jobs, through: :bids 
    has_many :users, through: :feedbacks 

    validates :business_name, presence: true, length: { in: 3..30} 
end
