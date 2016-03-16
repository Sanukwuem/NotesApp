class NotebooksController < ApplicationController
  def index  #front page for notebooks
    @notebooks = Notebook.all
  end

  def new
    @notebook = Notebook.new
    @notebooks = Notebook.all
  end

#  def show
  #  @notebook = Notebook.find(params[:id]) #notebook/id page
 #end

  def create
    @notebook = Notebook.new(comment_params)
    if @notebook.save
      redirect_to "http://localhost:3000/notebooks/new" #new_notebook_path

    #else
      #render 'new'
    end
end

  def comment_params
    params.require(:notebook).permit(:name)
  end
end
