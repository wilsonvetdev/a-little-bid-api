class User < ApplicationRecord
    has_many :jobs 
    has_many :feedbacks 
    has_many :contractors, through: :feedbacks

    validates :username, presence: true, uniqueness: true, length: { in: 3..20 } 
end
