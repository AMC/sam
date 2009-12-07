class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.string :name
      t.string :description
      t.integer :course_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :announcements
  end
end
