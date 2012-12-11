class Professor < ActiveRecord::Base
  attr_accessible :name, :first_name, :department

  has_many :courses
  has_many :professor_evals

  belongs_to :department    # foreign key - department_id
  belongs_to :instructor    # foreign key - instructor_id

end
