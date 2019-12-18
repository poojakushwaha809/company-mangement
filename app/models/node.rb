class Node < ApplicationRecord
	belongs_to :place

	validates :node_name, presence: true,
                    length: { minimum: 3 }
     validates :node_name, uniqueness: true

end
