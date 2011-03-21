class AddFinanciacionToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :finana, :integer
    rename_column :orders, :cart_id, :amount
  end

  def self.down
    remove_column :orders, :finana
    rename_column :orders, :amount, :cart_id
  end
end
