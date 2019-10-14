class TodosController < ApplicationController
  def index
    @projects = Project.all
    @plus_img = '/assets/plusimg.png'

  end

  def update
  end

  def create
    @todo = Todo.create(todo_params)
    @todo.save

    redirect_to '/'
  end

  private def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end
