class Checkout < ActiveRecord::Base
  validates :person, presence: true
  validates :book, presence: true
  belongs_to :book
end
