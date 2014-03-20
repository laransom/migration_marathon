class AddColumnReaderIdToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :reader_id, :integer

    Checkout.reset_column_information
    Checkout.find_each do |checkout|
      reader = Reader.find_by(full_name: checkout.person)
      checkout.reader_id = reader.id
      checkout.save
    end
  end
end
