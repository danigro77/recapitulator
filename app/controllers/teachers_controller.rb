class TeachersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @courses = Course.all
  end
  
  def show
    @lessons = Lesson.all
  end

end