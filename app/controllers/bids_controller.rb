class BidsController < ApplicationController 

    def index 
        bids = Bid.all 
        render json: bids
    end

    def show
        bid = Bid.find(params[:id])
        render json: bid
    end

    def create 
        job = Job.find_by(id: params[:job_id])
        bid = Bid.create(bid_params)
        if bid.valid?
            render json: bid
        else
            render json: {error: "Unable to create bid."}
        end
    end

    def update
        bid = Bid.find_by(id: params[:bid_id])
        bid.update(bid_params)
        if bid.valid? 
            render json: bid 
        else
            render json: {error: "Unable to update bid"}
        end
    end

    private 

    def bid_params
        params.permit(:bid_amount, :isAccepted, :comment, :contractor_id, :job_id)
    end
end