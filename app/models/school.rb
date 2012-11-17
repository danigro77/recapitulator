class School < ActiveRecord::Base
  attr_accessible :name, :location, :country

  has_many :users

end
