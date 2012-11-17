class Course < ActiveRecord::Base
  attr_accessible :title

  has_many    :scores
  has_many    :lessons

  has_many    :course_users
  has_many    :users :trough => :courses_users

  belongs_to  :grade_of_school

end