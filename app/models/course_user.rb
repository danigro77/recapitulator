class CourseUser < ActiveRecord::Base
  attr_accessible :title

  belongs_to  :users
  belongs_to  :courses

end