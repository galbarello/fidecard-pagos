class AddComercioToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :comercio, :string
  end

  def self.down
    remove_column :users, :comercio
  end
end
