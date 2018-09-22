class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :home
      t.string :guests
      t.integer :homescore
      t.integer :guestscore
      t.boolean :overtime

      t.timestamps
    end
  end
end
