class Answer < ActiveRecord::Base
  attr_accessible :content, :question_id
  belongs_to :question
  validates :content, :question_id, presence: true
end
