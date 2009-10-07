class CreateMails < ActiveRecord::Migration
  def self.up
    create_table :mails do |t|
      t.string :state
      t.string :description
      t.string :reference
      t.references :project
      t.references :group
      t.references :gateway
      t.references :template
      t.references :user
      t.string :from
      t.string :cc
      t.string :bcc
      t.string :subject
      t.text :body
      t.string :charset
      t.string :content_type
      t.string :reply_to
      t.string :headers
      t.string :mime_version
      t.timestamp :last_sent_at
      t.timestamps
    end
  end

  def self.down
    drop_table :mails
  end
end
