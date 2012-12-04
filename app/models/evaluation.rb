class Evaluation < ActiveRecord::Base
  attr_accessible :name, :course_id, :questions_attributes
  has_many :questions
  has_many :response_sets
  accepts_nested_attributes_for :questions, allow_destroy: true

  belongs_to :course    # foreign key - course_id
end
