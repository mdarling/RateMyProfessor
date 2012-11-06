class Course < ActiveRecord::Base
  attr_accessible :code, :description, :name, :semester, :year
end
