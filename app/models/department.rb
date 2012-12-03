class Department < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :name
=======
  attr_accessible :name, :shortname

>>>>>>> upstream/master
  has_many :professors
  has_many :courses
  
  :validates :name, presence: true

end
