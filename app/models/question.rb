class Question < ActiveRecord::Base
  attr_accessible :text, :mistake_type, :awesome, :number_answers

  has_many :answers

  belongs_to :user
  belongs_to :lesson

end