class Company < ApplicationRecord
  belongs_to :city
  has_many :place
  has_many :node
  validates :name, presence: true,
                    length: { minimum: 3 }
     validates :name, uniqueness: true

end
