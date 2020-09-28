class JobsController < ApplicationController 

    def index 
        jobs = Job.all 
        render json: jobs
    end

    def show 
        job = Job.find(params[:id])
        render json: job
    end

    def create
        job = Job.create(job_params)
        if job.valid?
            render json: job
        end
    end

    private 
    def job_params
        params.permit(:zipcode, :isComplete, :description, :user_id)
    end

end