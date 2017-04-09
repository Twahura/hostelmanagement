class Hostel < ApplicationRecord
	has_many :seats
	has_many :managers
end
