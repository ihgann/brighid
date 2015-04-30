class CoursesController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    if user_signed_in?
      @course = Course.new
    else
      redirect_to root_path
    end
  end

  def create
    @course = Course.new(course_params)
    @course.user_id = current_user.id
    if not user_signed_in? or current_user.id != @course.user_id
      redirect_to root_path
    end

    if @course.save
      redirect_to root_path
    else
      redirect_to new_course_path
    end
  end
  
  def edit
    @course = Course.find(params[:id])
    if not user_signed_in? or current_user.id != @course.user_id
      redirect_to root_path
    end
  end

  def update
    @course = Course.find(params[:id])
    
    if user_signed_in? and current_user.id == @course.user_id 
      if @course.update(course_params)
        redirect_to @course
      else
        render edit_course_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @course = Course.find(params[:id])
    if user_signed_in? and current_user.id == @course.user_id 
      Course.delete(params[:id])
    end
    redirect_to root_path
  end

  def show
    @course = Course.find(params[:id])
    if user_signed_in? and current_user.id == @course.user_id 
      @notes = Note.where(user_id:current_user.id, course_id:@course.id)
    else
      redirect_to root_path
    end

  end

  private

  def course_params
    params.require(:course).permit(:name, :instructor, :school, :semester)
  end

end
