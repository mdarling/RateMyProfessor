class AddDepartmentIdToProfessor < ActiveRecord::Migration
  def change
    add_column :professors, :department_id, :integer
  end
end
