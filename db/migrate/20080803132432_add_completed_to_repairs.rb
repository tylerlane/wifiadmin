class AddCompletedToRepairs < ActiveRecord::Migration
  def self.up
    add_column :repairs,  :completed, :boolean, :default => 0
  end

  def self.down
    remove_column :repairs, :completed
  end
end
