class TemplateOptions < ActiveRecord::Migration
  def self.up
    add_column :mail_templates, :processor, :string
    add_column :mail_templates, :charset, :string
    add_column :mail_templates, :content_type, :string
    add_column :mail_templates, :reply_to, :string
    add_column :mail_templates, :mime_version, :string
  end

  def self.down
    remove_column :mail_templates, :processor
    remove_column :mail_templates, :charset
    remove_column :mail_templates, :content_type
    remove_column :mail_templates, :reply_to
    remove_column :mail_templates, :mime_version
  end
end
