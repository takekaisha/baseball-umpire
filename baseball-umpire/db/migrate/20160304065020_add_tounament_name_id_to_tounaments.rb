class AddTounamentNameIdToTounaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :tounament_name_id, :integer

  end
end
