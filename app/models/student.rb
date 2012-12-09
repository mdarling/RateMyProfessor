class Student < ActiveRecord::Base
  attr_accessible :name, :email
  validates :name, :presence => true
  validates :email,
    :presence => true,
    :uniqueness => true,
    :format => { :with => /^([^@\s]+)@(unm.edu)$/i }
  has_and_belongs_to_many :courses    # foreign keys in an invisible join table

end
