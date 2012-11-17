class Lesson < ActiveRecord::Base
  attr_accessible :title, :date

  has_many :objectives
  has_many :questions
  has_many :scores

  belongs_to :course

end