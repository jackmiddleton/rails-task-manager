class TasksController < ApplicationController
  before_action :find_task, only: [:show,:edit,:update,:destroy]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    #create a movie with the data of the form
    # save the form
    @task.save
    # redirect back to index page
    redirect_to tasks_path
  end

  def index #all tasks
    @tasks = Task.all
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to @task
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
