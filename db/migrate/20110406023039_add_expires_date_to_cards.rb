class AddExpiresDateToCards < ActiveRecord::Migration
  def self.up
    add_column :cards, :card_expires_on, :date
  end

  def self.down
    remove_column :cards, :card_expires_on
  end
end
