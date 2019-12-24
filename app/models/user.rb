class User < ApplicationRecord
 belongs_to :company
 belongs_to :role
	mount_uploader :image, UserUploader


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
