class TasksController < ApplicationController
  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /task/:id
  def show
    @task = Task.find(params[:id])
  end

  # GET /task/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    @task.save
    # to save the instance of a new Restaurant
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params_plus)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require('task').permit(:title, :details)
  end

  def task_params_plus
    params.require('task').permit(:title, :details, :completed)
  end
end
