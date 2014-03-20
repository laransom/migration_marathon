class Categorization < ActiveRecord::Base
  validates :book_id, presence: true
  validates :category_id, presence: true
  has_many :books
  has_many :categories
end
