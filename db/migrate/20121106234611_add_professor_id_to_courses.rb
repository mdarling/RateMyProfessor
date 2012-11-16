class AddProfessorIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :professor_id, :integer
  end
end
