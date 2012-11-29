class AddNameRemoveQuestionsFromEvaluations < ActiveRecord::Migration
  def change
    add_column :evaluations, :name, :string
    remove_column :evaluations, :q1
    remove_column :evaluations, :q2
    remove_column :evaluations, :q3
    remove_column :evaluations, :q4
  end
end
