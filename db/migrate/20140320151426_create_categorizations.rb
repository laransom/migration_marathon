class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :books_id, null: false
      t.integer :categories_id, null: false

      t.timestamps
    end
  end
end
