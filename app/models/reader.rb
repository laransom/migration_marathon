class Reader < ActiveRecord::Base
  validates :full_name, presence: true
  validates :phone_number, format: {
    with: /\d{3}-\d{3}-\d{4}/,
    message: "bad format"
    }
  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "bad format"
    }
end
