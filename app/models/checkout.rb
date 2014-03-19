class Checkout < ActiveRecord::Base
  validates :name, presence: true
  validates :book, presence: true
  belongs_to :book
end
