class NotesController < ApplicationController
  
  def new
    if not user_signed_in?
      redirect_to root_path
    end
    @note = Note.new
    if params.has_key?(:course)
      @course = Course.find(params[:course])
    end
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    if user_signed_in? and current_user.id == @note.user_id 
      @note.course_id = params[:course_id]
      if @note.save
        redirect_to @note
      else
        redirect_to new_note_path
      end
    else
      redirect_to root_path
    end
  end

  def edit
    @note = Note.find(params[:id])
    if not user_signed_in? or current_user.id != @note.user_id 
      redirect_to root_path
    end
  end

  def update
    @note = Note.find(params[:id])
    
    if user_signed_in? and current_user.id == @note.user_id 
      if @note.update(note_params)
        redirect_to @note
      else
        render edit_note_path
      end
    else
      redirect_to root_path
    end
  end
  
  def destroy
    @note = Note.find(params[:id])
    if user_signed_in? and current_user.id == @note.user_id 
      @course = Course.where(["id = ?", @note.course_id])[0]
      Note.delete(@note.id)
      redirect_to course_path(@course)
    else
      redirect_to root_path
    end
  end

  def show
    @note = Note.find(params[:id])
    if user_signed_in? and current_user.id == @note.user_id 
      @course = Course.where(["id = ?", @note.course_id])[0]
      @author = User.where(["id = ?", @course.user_id])[0]
    else
      redirect_to root_path
    end
  end

  def download
    @note = Note.find(params[:id])
    @course = Course.where(["id = ?", @note.course_id])[0]
    @author = User.where(["id = ?", @course.user_id])[0]
  end

  private

  def note_params
    params.require(:note).permit(:course_id, :name, :content)
  end

end
