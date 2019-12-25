class Company < ApplicationRecord

	  mount_uploader :company_image, CompanyUploader
  belongs_to :country
  belongs_to :state
  belongs_to :city
  has_many :places
  has_many :nodes
  has_many :users
  # validates :name, presence: true,
  #                   length: { minimum: 3 }
  #    validates :name, uniqueness: true

end
