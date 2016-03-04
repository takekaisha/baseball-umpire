class RemoveNameIdToTournaments < ActiveRecord::Migration
  def change
    remove_column :tournaments, :name, :string
  end
end
