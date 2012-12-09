class AddInstructorIdToProfessors < ActiveRecord::Migration
  def change
    add_column :professors, :instructor_id, :integer
  end
end
