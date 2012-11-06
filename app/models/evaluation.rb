class Evaluation < ActiveRecord::Base
  attr_accessible :q1, :q2, :q3, :q4

  belongs_to :course    # foreign key - course_id

end
