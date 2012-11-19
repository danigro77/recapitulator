class Course < ActiveRecord::Base
  attr_accessible :title, :lessons, :users

  has_many    :scores
  has_many    :lessons

  has_and_belongs_to_many :users
  belongs_to  :grade_of_school
  

end