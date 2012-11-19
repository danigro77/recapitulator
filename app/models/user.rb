class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :username, :courses, :id
  # attr_accessible :name, :email, :password, :password_confirmation
  
  # accepts_nested_attributes_for :courses

  has_many    :questions
  has_many    :scores

  has_many    :course_users
  has_many    :courses, :through => :course_users

  belongs_to  :school
  belongs_to  :role
  belongs_to  :grade_of_school

  # has_secure_password
  validates :password, :presence => { :on => :create }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :username, presence: true, length: { maximum: 20 }
    
end