class TodosController < ApplicationController
  def index
    @projects = Project.all
    @plus_img = '/assets/addTodoIcon.png'

  end

  def update
    @todo = Todo.update(chech_params)
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
    params.require(:todo).permit(:id, :isCompleted)
  end
end
