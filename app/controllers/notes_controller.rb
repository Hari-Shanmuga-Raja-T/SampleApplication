class NotesController<ApplicationController

  def index
    @notes = Note.all
  end

  def show
    note_id = params[:id].to_i
    @current_note = Note.find (note_id)
  end

  def create
    note_content = params[:content]
    new_note = Note.new
    new_note.content = note_content
    new_note.save
    redirect_to '/'
  end
end
