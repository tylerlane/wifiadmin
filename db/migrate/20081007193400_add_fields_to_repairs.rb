class AddFieldsToRepairs < ActiveRecord::Migration
  def self.up
    add_column :repairs, :ip_address, :string
    add_column :repairs, :completed_date, :datetime
    add_column :repairs, :completed_by, :string, :default => "Jay Fahnestock"
    remove_column :repairs, :completed
  end

  def self.down
    remove_column :repairs, :completed
    remove_column :repairs, :ip_address
    remove_column :repairs, :completed_date
    remove_column :repairs, :completed_by
  end
end
