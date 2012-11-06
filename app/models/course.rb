class Course < ActiveRecord::Base
  attr_accessible :code, :description, :name, :semester, :year

  belongs_to :professor    # foreign key - professor_id

  belongs_to :department   # foreign key - department_id

  has_many :evaluations

end
