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

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end