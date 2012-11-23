class AddCourseIdToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :course_id, :integer
  end
end
