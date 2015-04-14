class ChangeTeamMatchTime < ActiveRecord::Migration
  def up
    change_column :matches, :match_time, :date
  end

  def down
    change_column :matches, :match_time, :datetime
  end
end
