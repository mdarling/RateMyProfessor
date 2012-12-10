class AddProfessorIdToProfessorEval < ActiveRecord::Migration
  def change
    add_column :professor_evals, :professor_id, :integer
  end
end
