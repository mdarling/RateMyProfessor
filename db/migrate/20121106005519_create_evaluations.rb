class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.string :q4

      t.timestamps
    end
  end
end
