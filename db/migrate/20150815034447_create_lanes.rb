class CreateLanes < ActiveRecord::Migration
  def change
    create_table :lanes do |t|
      t.string :origin
      t.string :destination
      t.string :mode_of_transport
      t.string :equipment_type
      t.integer :minimum_commitment
      t.integer :maximum_commitment
      t.integer :cost

      t.timestamps null: false
    end
  end
end
