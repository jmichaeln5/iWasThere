class AddZipToPlace < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :zip, :integer
  end
end
