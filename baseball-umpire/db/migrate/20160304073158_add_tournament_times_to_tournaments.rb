class AddTournamentTimesToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :tournament_times, :integer
  end
end
