class AddUserAndPlaceToDirections < ActiveRecord::Migration[5.1]
  def change
    add_reference :directions, :user, foreign_key: true
    add_reference :directions, :place, foreign_key: true
  end
end
