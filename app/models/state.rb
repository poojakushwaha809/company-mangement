class State < ApplicationRecord
  belongs_to :country
  has_many :cities
  has_many :companies
  has_many :place
  has_many :node
  
validates :state, presence: true,
                    length: { minimum: 3 }
     validates :state, uniqueness: true

end
