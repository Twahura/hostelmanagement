class Student < ApplicationRecord
  belongs_to :seat
  has_many :payments
  has_many :visitors
end
