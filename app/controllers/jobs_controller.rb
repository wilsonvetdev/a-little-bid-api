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

    def destroy
        job = Job.find_by(id: params[:id])
        job.destroy 
        render json: {success: 'job instance successfully deleted.'}
    end

    private 
    def job_params
        params.permit(:zipcode, :isComplete, :description, :user_id)
    end

end