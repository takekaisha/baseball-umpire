class CreateTounamentNames < ActiveRecord::Migration
  def change
    create_table :tounament_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
