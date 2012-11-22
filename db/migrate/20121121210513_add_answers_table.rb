class AddAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_text
      t.boolean :is_correct
      t.integer :question_id
      t.timestamps
    end
  end
end
