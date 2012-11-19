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
  
  def new 
    case params[:name] 
    when "course" 
      @course = Course.new
      @course.users << current_user
    when "lesson" 
      @date_today = Date.today
      @answer_range = (1..MAX_ANSWERS).to_a
      @lesson = Lesson.new
      @lesson.course_id = params[:c_id]
    end
  end
  
  def create
    @lesson = Lesson.new params[:lesson]
    @lesson.save
  end

end