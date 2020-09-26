class Feedback < ApplicationRecord
  belongs_to :contractor
  belongs_to :user

  validates :content, presence: true, length: { maximum: 500 }
end
