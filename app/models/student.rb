class Student < ActiveRecord::Base
  attr_accessible :email, :name

  has_and_belongs_to_many :courses    # foreign keys in an invisible join table

end
