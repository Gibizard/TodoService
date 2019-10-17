class TodosController < ApplicationController
  def index
    @projects = Project.all
    @plus_img = '/assets/addTodoIcon.png'

  end

  def update
    todo = Todo.find(check_params[:id])

    if todo.isCompleted
      todo.isCompleted = false
    elsif !todo.isCompleted
      todo.isCompleted = true
    end

    todo.save
    redirect_to '/'
  end

  def create
    @todo = Todo.create(todo_params)
    @todo.save

    redirect_to '/'
  end

  private def todo_params
    params.require(:todo).permit(:text, :project_id)
  end

  private def check_params
    params.permit(:id)
  end
end
