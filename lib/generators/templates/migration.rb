class CreateTeamMembers < ActiveRecord::Migration
  def self.up
    create_table :team_members do |t|
      t.string :name
      t.string :twitter_url
      t.string :bio
      t.string :image_url
      t.timestamps
    end
  end

  def self.down
    drop_table :team_members
  end
end
