class AddPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filename
      t.boolean :is_primary
      t.integer :user_id
      t.timestamps
    end
  end
end
