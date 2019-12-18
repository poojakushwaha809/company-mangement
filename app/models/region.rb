class Region < ApplicationRecord
	validates :region_name, presence: true,
                    length: { minimum: 3 }
     validates :region_name, uniqueness: true

end
