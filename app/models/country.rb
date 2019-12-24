class Country < ApplicationRecord
	mount_uploader :country_image, CountryUploader
	  has_many :states
	  has_many :cities
	  has_many :companies
	  has_many :places
	  has_many :nodes

	 validates :country_name, presence: true,
                    length: { minimum: 3 }
     validates :country_name, uniqueness: true

end
