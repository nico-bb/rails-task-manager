class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.all
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params.require(:task).permit!)
    redirect_to task_path(@task)
  end

  def create
    @task = Task.new(params.require(:task).permit!)
    @task.save
    redirect_to task_path(@task)
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path
  end
end
