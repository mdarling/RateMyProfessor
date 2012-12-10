class CreateProfessorEvals < ActiveRecord::Migration
  def change
    create_table :professor_evals do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.string :comment

      t.timestamps
    end
  end
end
