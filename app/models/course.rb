class Course < ActiveRecord::Base
  attr_accessible :code, :description, :name, :semester, :year, :id
  belongs_to :professor    # foreign key - professor_id
  belongs_to :department   # foreign key - department_id
  has_many :evaluations
  has_and_belongs_to_many :students    # foreign keys in an invisible join table

  validates :code, :description, :name, :semester, :year, presence: true
  validates :year, numericality: {greater_than_or_equal_to: 2012}
  validates :code, :name, :id, :description, uniqueness: true


end
