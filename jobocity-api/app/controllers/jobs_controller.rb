class JobsController < ApplicationController
  # before_action :set_job, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @jobs = Jobs.all
    # json_response(@todos)
  end

  def show
    # json_response(@todo)
  end

  private

  def job_params
    params.permit(:title, :description, :company, :location, :technologies,:logo,:position)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
