class AddSurveyStatusToSurveys < ActiveRecord::Migration
  def self.up
    add_column :surveys, :survey_status, :string
  end

  def self.down
    remove_column :surveys, :survey_status
  end
end
