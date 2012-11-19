class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @user = User.find(current_user)
    @courses = Course.find_by_user_id(current_user)
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
    case params[:name] 
    when "course"
      @course = Course.new params[:course]
      @course.save
    when "lesson" 
      @lesson = Lesson.new params[:lesson]
      @lesson.save
    end
  end

end