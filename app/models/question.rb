class Question < ActiveRecord::Base
  attr_accessible :text, :mistake_type, :awesome
  before_save :number_of_answers

  has_many :answers

  belongs_to :user
  belongs_to :lesson
  
  MISTAKE_TYPES = {
    :no_mistakes => 0,
    :spelling_mistake => 1,
    :fact_mistake => 2,
    :spelling_fact_mistake => 3
  }.freeze
  
  def number_of_answers
    self.number_answers ||= self.lesson.number_of_answers
  end
end