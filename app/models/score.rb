class Score < ActiveRecord::Base
  attr_accessible :points, :max_points

  belongs_to :lesson
  belongs_to :user
  belongs_to :course
  
  # def self.all_score_user(u_id, c_id)
  #   user_points = self.find(:points).where("user_id = ? and course_id = ?", [u_id, c_id]).inject { |sum, i| sum + i }
  #   all_max_points = self.find(:max_points).where("user_id = ? and course_id = ?", [u_id, c_id]).inject { |sum, i| sum + i }
  #   "#{user_points}/#{all_max_points}"
  # end
  # 
  # def self.lesson_score_user(u_id, l_id)
  #   user_points = self.find(:points).where("user_id = ? and lesson_id = ?", [u_id, l_id])
  #   "#{user_points.first}/#{max_points}"
  # end
  # 
  # def self.lesson_average_scores(l_id)
  #   user_points = self.find(:points).where("lesson_id = ?", l_id)
  #   num_students = user_points.length
  #   average_user_points = user_points.inject { |sum, i| sum + i } / num_students
  #   "#{average_user_points}/#{all_max_points}"
  # end

end