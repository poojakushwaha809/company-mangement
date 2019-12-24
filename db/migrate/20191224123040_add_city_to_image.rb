class AddCityToImage < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :city_image, :string
  end
end
