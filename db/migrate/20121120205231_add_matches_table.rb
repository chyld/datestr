class AddMatchesTable < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :is_match
      t.timestamps
    end
  end
end
