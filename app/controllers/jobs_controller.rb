class JobsController < ApplicationController
    skip_before_action :require_authentication, only: [:index, :show]
    before_action :set_job, only: [:show, :edit, :update, :destroy]    
    
    def index
        @search_query = params[:query]

        @jobs = Job.search(@search_query)
    end

    def new
        @job = Job.new
    end

    def create
        @job = Job.new(job_params)
        if @job.save
            redirect_to @job, notice: 'Job was created successfully'
        else
            render :new
        end
    end

    def show        
    end

    def edit        
    end

    def update        
        if @job.update(job_params)
            redirect_to @job, notice: 'Job was updated successfully!'
        else
            render :edit
        end
    end

    def destroy        
        @job.destroy
        redirect_to jobs_path
    end

    private

    def job_params
        params.require(:job).permit(:company, :title, :location, :description, :skills, :email)
    end

    def set_job
        @job = Job.find(params[:id])
    end
end