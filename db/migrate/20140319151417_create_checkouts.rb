class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :person, null: false
      t.datetime :checked_in
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
