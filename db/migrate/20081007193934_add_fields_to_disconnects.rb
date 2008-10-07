class AddFieldsToDisconnects < ActiveRecord::Migration
  def self.up
    add_column :disconnects, :completed_date, :datetime
    add_column :disconnects, :completed_by, :string, :default => "Jay Fahnestock"
  end

  def self.down
    remove_column :disconnects, :completed_date
    remove_column :disconnects, :completed_by
  end
end
