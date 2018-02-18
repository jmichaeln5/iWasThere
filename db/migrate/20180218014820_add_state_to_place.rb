class AddStateToPlace < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :state, :string
  end
end
