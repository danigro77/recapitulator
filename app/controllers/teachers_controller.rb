class TeachersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @teacher = User.find(current_user.id)
    @courses = Course.joins(:users).where(:users => { :id => @teacher.id })
  end
  
  def show
    # @teacher = User.find(current_user.id)
    @course = Course.find(params[:c_id])
    @lessons = Lesson.where(["course_id = ?", @course.id])
  end
  
  def new # TODO
    case params[:name] 
    when "course" 
      # @teacher = User.find(current_user.id)
      @course = Course.new
      @course.user_id = current_user.id         #???? many-to-many
    when "lesson" 
      # @course = Course.find(params[:c_id])
      @lesson = Lesson.new
      @lesson.course_id = params[:c_id]
    end
  end

end