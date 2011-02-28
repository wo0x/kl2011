class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.integer :access_level
      t.string :name
      t.string :hashed_password
      t.string :street1
      t.string :street2
      t.string :zip
      t.string :telephone
      t.string :telefax
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
