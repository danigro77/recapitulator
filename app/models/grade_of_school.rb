class GradeOfSchool < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date

  has_many :users
  has_many :courses

end