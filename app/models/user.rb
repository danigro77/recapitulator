class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation

  has_many    :questions
  has_many    :scores

  has_many    :courses_users
  has_many    :courses, :trough => :courses_users

  belongs_to  :school
  belongs_to  :role
  belongs_to  :grade_of_school

  has_secure_password
  validates :password, :presence => { :on => :create }

end