class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :match_time, null: false
      t.integer :team_one_id, null: false
      t.integer :team_two_id, null: false
      t.integer :number_of_rounds, null: false, default: 1
      t.integer :league_id

      t.timestamps null: false
    end
  end
end
