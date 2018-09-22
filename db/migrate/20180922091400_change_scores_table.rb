class ChangeScoresTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :home, :string
    remove_column :scores, :guests, :string
    remove_column :scores, :homescore, :integer
    remove_column :scores, :guestscore, :integer
    add_column :scores, :home_team_id, :integer
    add_column :scores, :guest_team_id, :integer
    add_column :scores, :home_score, :integer
    add_column :scores, :guest_score, :integer
  end
end
