class AddRatingsColumn < ActiveRecord::Migration
  def change
    add_column :books, :rating, :integer
  end
end
