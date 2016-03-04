class AddTournamentDateToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :tournament_date, :date
  end
end
