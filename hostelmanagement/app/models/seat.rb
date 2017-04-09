class Seat < ApplicationRecord
  belongs_to :hostel
  has_many :students
end
