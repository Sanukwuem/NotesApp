class NotesController < ApplicationController
  def index
    @notes = Note.all
  end
  def new
    @note = Note.new
  end


  def show
    @note = Notebook.find(params[:id]) #Notebook.find(params[:id])
  end



def create
  @note = Note.new(note_params) #find(params[:id])
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
