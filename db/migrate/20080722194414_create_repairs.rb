class CreateRepairs < ActiveRecord::Migration
  def self.up
    create_table :repairs do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone_number
      t.integer :billmax_acct
      t.string :status
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :repairs
  end
end
