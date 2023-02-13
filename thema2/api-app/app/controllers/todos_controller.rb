class TodosController < ApplicationController

  # GET /todos
  def index
    todos = Todo.order('created_at DESC');
    render json: {status: 'SUCCESS',message:'Loaded Todos',data:todos},status: :ok
  end

  # POST /todos
  def create
    #initializes record but doesn't add it to database yet
    todo = Todo.new(todo_params)

    if todo.save
      render json: {status: 'SUCCESS',message:'Saved Article',data:todo},status: :ok
    else
      render json: {status: 'ERROR',message:'Article Not Saved',data:todo.errors},status: :unprocessable_entry
    end

  end

   # GET /todos/:id
  def show
    todo =Todo.find(params[:id])
    render json: {status: 'SUCCESS',message:'Loaded Todo',data:todo},status: :ok
  end

  # PUT /todos/:id
  def update
    todo =Todo.find(params[:id])
    if todo.update(todo_params)
      render json: {status: 'SUCCESS',message:'Updated Todo',data:todo},status: :ok
    else
      render json: {status: 'ERROR',message:'Article Not Updated',data:todo.errors},status: :unprocessable_entry
    end
  end
  
  # DELETE /todos/:id
  def destroy
    
    todo = Todo.find(params[:id])
    todo.destroy
    render json: {status: 'SUCCESS',message:'Deleted Todo',data:todo},status: :ok

  end
  
  private
  def todo_params
      #allows only title, username parameters to be passed
      params.require(:todo).permit(:title,:username)
  end
end
