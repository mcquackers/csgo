class CreateUserMatchRelationships < ActiveRecord::Migration
  def change
    create_table :user_match_relationships do |t|
      t.integer :user_id, null: false
      t.integer :match_id, null: false

      t.timestamps null: false
    end
  end
end
