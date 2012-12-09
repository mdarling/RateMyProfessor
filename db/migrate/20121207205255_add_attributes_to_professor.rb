class AddAttributesToProfessor < ActiveRecord::Migration
  def change
    add_column :professors, :first_name, :string
    add_column :professors, :department, :string
  end
end
