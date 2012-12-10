class ProfessorEval < ActiveRecord::Base
  attr_accessible :comment, :q1, :q2, :q3, :q4

    belongs_to :professor
end
