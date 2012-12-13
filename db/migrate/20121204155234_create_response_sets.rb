class CreateResponseSets < ActiveRecord::Migration
  def change
    create_table :response_sets do |t|
      t.integer :evaluation_id
      t.timestamps
    end
  end
end
