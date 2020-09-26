class Feedback < ApplicationRecord
  belongs_to :contractor
  belongs_to :user
end
