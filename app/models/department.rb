class Department < ActiveRecord::Base
  attr_accessible :name, :shortname

  has_many :professors

  has_many :courses

end
