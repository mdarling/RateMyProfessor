class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.text :description
      t.string :semester
      t.integer :year

      t.timestamps
    end
  end
end
