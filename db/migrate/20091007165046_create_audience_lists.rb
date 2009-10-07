class CreateAudienceLists < ActiveRecord::Migration
  def self.up
    create_table :audience_lists do |t|
      t.string :name
      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :audience_lists
  end
end
