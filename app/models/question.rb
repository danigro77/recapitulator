class Question < ActiveRecord::Base
  attr_accessible :text, :mistake_type, :awesome

  has_many :answers

  belongs_to :user
  belongs_to :lesson

end