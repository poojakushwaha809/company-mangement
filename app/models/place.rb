class Place < ApplicationRecord
  belongs_to :company
  has_many :nodes
  validates :place_name, presence: true,
                    length: { minimum: 3 }
     validates :place_name, uniqueness: true

end
