class RemoveTeamFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :team, :string
    add_column :players, :team_id, :integer
  end
end
