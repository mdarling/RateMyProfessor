class Question < ActiveRecord::Base
  attr_accessible :content, :evaluation_id, :answers_attributes
  belongs_to :evaluation
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true
end

