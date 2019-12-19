class Company < ApplicationRecord

	  mount_uploader :company_image, CompanyUploader

  belongs_to :city
  has_many :place
  has_many :node
  validates :name, presence: true,
                    length: { minimum: 3 }
     validates :name, uniqueness: true

end
