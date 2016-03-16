class NotesController < ApplicationController

def new
  @notebook = Notebook.find(params[:id])
  @note = @notebook.notes.build
end

def create
  @notebook = Notebook.find(params[:id])
  @note = @notebook.notes.new(comment_params1)    #build(params[:notes])

  if @note.save
    redirect_to "http://localhost:3000/notebooks/new"   #new_note_path(:id => @notebook.id)
  end
end


def comment_params1
  params.require(:note).permit(:note)
end
end
