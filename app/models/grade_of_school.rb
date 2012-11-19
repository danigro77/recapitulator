class GradeOfSchool < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date
  
  before_save :default_values

  has_many :users
  has_many :courses
  belongs_to :school

  def default_values
    date = Date.today
    self.start_date ||= date
    self.end_date ||= date.change(:year => date.year + 1)
  end
end