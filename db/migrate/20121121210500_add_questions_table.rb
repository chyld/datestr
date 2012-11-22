class AddQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.integer :user_id
      t.timestamps
    end
  end
end
