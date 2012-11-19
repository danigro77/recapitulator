class Question < ActiveRecord::Base
  attr_accessible :text, :mistake_type, :awesome, :number_answers
  
  before_save :default_values

  has_many :answers

  belongs_to :user
  belongs_to :lesson

  def default_values
    self.number_answers ||= 4
    self.mistake_types ||= 0
    self.awesome ||= 0
  end
end