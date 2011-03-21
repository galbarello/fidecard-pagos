class AddDescriptionToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :description, :string
  end

  def self.down
    remove_column :orders, :description
  end
end
