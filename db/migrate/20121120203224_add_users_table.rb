class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :tagline
      t.integer :age
      t.string :gender
      t.string :city
      t.string :state
      t.string :ethnicity
      t.text :description
      t.timestamps
    end
  end
end
