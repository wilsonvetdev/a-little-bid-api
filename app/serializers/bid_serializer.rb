class BidSerializer < ActiveModel::Serializer
  attributes :id, :bid_amount, :isAccepted, :comment, :contractor, :job
end
