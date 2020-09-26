class Bid < ApplicationRecord
  belongs_to :contractor
  belongs_to :job
end
