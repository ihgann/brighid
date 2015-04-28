class CoursesController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user_id = current_user.id
    if @course.save
      redirect_to root_path
    else
      redirect_to new_course_path
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    
    if @course.update(course_params)
      redirect_to @course
    else
      render edit_course_path
    end
  end

  def destroy
    Course.delete(params[:id])
    redirect_to root_path
  end

  def show
    @course = Course.find(params[:id])
    if user_signed_in?
      @notes = Note.where(user_id:current_user.id, class_id:@course.id)
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :instructor)
  end

end
