class Score < ActiveRecord::Base
  attr_accessible :points, :max_points

  belongs_to :lesson
  belongs_to :user
  belongs_to :course

end