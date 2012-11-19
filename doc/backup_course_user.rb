class CourseUser < ActiveRecord::Base
  attr_accessible :user, :course, :users, :courses, :user_id

  belongs_to  :user
  belongs_to  :course

end