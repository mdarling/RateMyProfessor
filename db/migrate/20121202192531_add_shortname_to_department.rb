class AddShortnameToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :shortname, :string
  end
end
