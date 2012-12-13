class AddNameRemoveQuestionsFromEvaluations < ActiveRecord::Migration
  def change
    add_column :evaluations, :name, :string
    remove_column :evaluations, :q1
    remove_column :evaluations, :q2
    remove_column :evaluations, :q3
    remove_column :evaluations, :q4
    remove_column :evaluations, :q5
    remove_column :evaluations, :q6
    remove_column :evaluations, :q7
    remove_column :evaluations, :q8
    remove_column :evaluations, :q9
    remove_column :evaluations, :q10
  end
end
