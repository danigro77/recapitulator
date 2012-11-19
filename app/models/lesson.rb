class Lesson < ActiveRecord::Base
  attr_accessible :title, :date, :number_of_answers
  
  before_save :default_values

  has_many :objectives
  has_many :questions
  has_many :scores

  belongs_to :course
  
  MAX_ANSWERS = 10
  
  def default_values
    self.date ||= Date.now
  end

end