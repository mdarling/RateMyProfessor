class Department < ActiveRecord::Base
  attr_accessible :name, :shortname

  has_many :professors

  has_many :courses

  validates :name, presence: true
<<<<<<< HEAD

=======
>>>>>>> 2f2faa4b1bdc49a5bee03d0a3359dda9d64f95f8
end
