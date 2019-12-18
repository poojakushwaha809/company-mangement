class Country < ApplicationRecord
	  has_many :states
	  has_many :cities
	  has_many :companies
	  has_many :place
	  has_many :node

	 validates :country_name, presence: true,
                    length: { minimum: 3 }
     validates :country_name, uniqueness: true

end
