class RemoveCommentsFromPlaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :places, :comment
  end
end
