class Response < ActiveRecord::Base
  attr_accessible :response_set_id, :question_id, :answer_id
  belongs_to :response_set
  validates :question_id, :answer_id, presence: true
end
