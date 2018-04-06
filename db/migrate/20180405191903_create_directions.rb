class CreateDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :directions do |t|

      t.timestamps
    end
  end
end
