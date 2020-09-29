class ContractorsController < ApplicationController

    def index 
        contractors = Contractor.all
        render json: contractors
    end

    def create
        contractor = Contractor.create(contractor_params)
        if contractor.valid?
            render json: contractor
        end
    end

    private 

    def contractor_params 
        params.permit(:business_name)
    end

end
