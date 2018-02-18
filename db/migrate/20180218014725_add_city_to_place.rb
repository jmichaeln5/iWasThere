class AddCityToPlace < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :city, :string
  end
end
