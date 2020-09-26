class JobSerializer < ActiveModel::Serializer
  attributes :id, :zipcode, :isComplete, :description, :user
  
  has_many :bids
end
