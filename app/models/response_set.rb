class ResponseSet < ActiveRecord::Base
  attr_accessible :responses_attributes
  has_many :responses
  accepts_nested_attributes_for :responses, allow_destroy: true

  belongs_to :evaluation    # foreign key - evaluation_id
end
