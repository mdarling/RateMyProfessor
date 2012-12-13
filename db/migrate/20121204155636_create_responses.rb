class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :response_set_id
      t.integer :question_id
      t.integer :answer_id
      t.timestamps
    end
  end
end
