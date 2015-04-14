class CreateMatchResults < ActiveRecord::Migration
  def change
    create_table :match_results do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.string :score
      t.integer :match_id

      t.timestamps null: false
    end
  end
end
