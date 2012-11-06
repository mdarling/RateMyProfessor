class CoursesStudents < ActiveRecord::Migration
  def up
    create_table :courses_students, :id => false do |t|
       t.integer :course_id
       t.integer :student_id
    end
  end

  def down
  end
end
