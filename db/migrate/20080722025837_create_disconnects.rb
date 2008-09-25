class CreateDisconnects < ActiveRecord::Migration
  def self.up
    create_table :disconnects do |t|
      t.string :name
      t.string :customer
      t.string :city
      t.string :number
      t.integer :billmax_acct
      t.string :status
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :disconnects
  end
end
