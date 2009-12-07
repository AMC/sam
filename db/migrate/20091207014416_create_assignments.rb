class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.string :name
      t.string :description
      t.date :due_date
      t.decimal :points_possible
      t.timestamps
    end
  end
  
  def self.down
    drop_table :assignments
  end
end
