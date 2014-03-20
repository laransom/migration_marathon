require 'pry'

class SplitNameToFirstAndLast < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.reset_column_information
    Reader.find_each do |reader|
      name = reader.full_name.split
      reader.update_attribute(:first_name, name[0])
      reader.update_attribute(:last_name, name[1])
    end
  end
end
