class AddNombreUsuarioToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :nombre, :string
  end

  def self.down
    remove_column :users, :nombre
  end
end
