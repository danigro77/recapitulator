class Course < ActiveRecord::Base
  attr_accessible :title, :lessons, :id, :users

  has_many    :scores
  has_many    :lessons

  has_many    :course_users
  has_many    :users, :through => :course_users

  belongs_to  :grade_of_school

end