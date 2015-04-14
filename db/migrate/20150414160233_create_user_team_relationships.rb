class CreateUserTeamRelationships < ActiveRecord::Migration
  def change
    create_table :user_team_relationships do |t|
      t.integer :user_id, null: false
      t.integer :team_id, null: false

      t.timestamps null: false
    end
  end
end
