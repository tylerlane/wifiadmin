class AddSurveyDateToSurveys < ActiveRecord::Migration
  def self.up
    add_column :surveys, :surveyed_date, :datetime
    add_column :surveys, :surveyed_by, :string, :default => "Jay Fahnestock"
  end

  def self.down
    remove_column :surveys, :surveyed_date
    remove_column :surveys, :surveyed_by
  end
end
