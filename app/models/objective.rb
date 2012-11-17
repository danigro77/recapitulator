class Objective < ActiveRecord::Base
  attr_accessible :text

  belongs_to :lesson

end