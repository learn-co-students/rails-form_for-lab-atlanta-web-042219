class SchoolClass < ApplicationRecord
	
	validates :title, :room_number, {presence: true}
end
