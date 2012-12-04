class Department < ActiveRecord::Base
  attr_accessible :name, :shortname

  has_many :professors

  has_many :courses
<<<<<<< HEAD
  
  validates :name, presence: true
=======
>>>>>>> 52289363690a23acbccf86fcb818ccb269bc8c4d

end
