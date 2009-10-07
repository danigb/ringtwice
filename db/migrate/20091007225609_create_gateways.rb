class CreateGateways < ActiveRecord::Migration
  def self.up
    create_table :gateways do |t|
      t.string :name
      t.references :project
      t.string :protocol
      t.string :host
      t.integer :port
      t.string :user
      t.string :password
      t.string :auth
      t.string :domain

      t.timestamps
    end
  end

  def self.down
    drop_table :gateways
  end
end
