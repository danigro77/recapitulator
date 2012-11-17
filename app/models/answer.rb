class Answer < ActiveRecord::Base
  attr_accessible :text, :right_answer

  belongs_to :question

  validates :text, :presence => true
end