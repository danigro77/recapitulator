class School < ActiveRecord::Base
  attr_accessible :name, :location, :country, :url

  has_many :users
  has_many :grades_of_schools

  validates :url, :presence => true, :uniqueness => true
  validates :name, :presence => true
end
