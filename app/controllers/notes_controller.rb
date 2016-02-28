class NotesController < ApplicationController
  def index
    @notes = Note.all
  end
  def new
    @note = Note.new
  end


  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end


  def create
    @note = Notebook.new(note_params)
    if @note.save
      redirect_to '/notebooks'

    else
      render 'new'
    end
  end
  private
  def note_params
    params.require(:note).permit(:content)
  end
end

