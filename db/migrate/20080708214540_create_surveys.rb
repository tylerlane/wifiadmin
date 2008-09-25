class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.string :email
      t.text :directions

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
