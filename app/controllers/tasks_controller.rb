class TasksController < ApplicationController
  
  before_filter :authenticate_user!
  
  
  def index
    @incomplete_tasks = Task.where(complete: false).order(:due_date)
    @complete_tasks = Task.where(complete: true)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(params[:task])
    redirect_to tasks_url
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(params[:task])
    redirect_to tasks_url
  end

  def destroy
    @task = Task.destroy(params[:id])
    redirect_to tasks_url
  end
  
  
  
end
