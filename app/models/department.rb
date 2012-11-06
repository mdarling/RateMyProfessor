class Department < ActiveRecord::Base
  attr_accessible :name

  has_many :professors

  has_many :courses

end
