class NotebooksController < ApplicationController
  def index
    @notebooks = Notebook.all
    @notes = Note.all
  end
  def new
    @notebook = Notebook.new
    @note = Note.new
  end

  def show
    #@notebook = Notebook.all
    @notebook = Notebook.find(params[:id])
    @notebooks = Notebook.all
    @note = Note.all

  end
  def create
    @notebook = Notebook.new(notebook_params)
    if @notebook.save
      redirect_to '/notebooks'

    else
      render 'new'
    end
  end
    private
      def notebook_params
        params.require(:notebook).permit(:content)
      end
  end
