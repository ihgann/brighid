class NotesController < ApplicationController
  
  def new
    @note = Note.new
    if params.has_key?(:course)
      @course = Course.find(params[:course])
    end
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.class_id = params[:class_id]
    if @note.save
      redirect_to @note
    else
      redirect_to new_note_path
    end
  end

  def show
    @note = Note.find(params[:id])
    @course = Course.where(["id = ?", @note.class_id])[0]
  end

  private

  def note_params
    params.require(:note).permit(:class_id, :name, :content)
  end

end
