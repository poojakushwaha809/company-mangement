class City < ApplicationRecord
	  has_many :companies

  belongs_to :state

  validates :city_name, presence: true,
                    length: { minimum: 3 }
     validates :city_name, uniqueness: true

end
