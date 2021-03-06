class CreateTemplates < ActiveRecord::Migration
  def self.up
    create_table :mail_templates do |t|
      t.string :name
      t.text :body
      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :mail_templates
  end
end
