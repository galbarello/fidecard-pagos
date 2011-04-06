class ChangeTableCards < ActiveRecord::Migration
  def self.up
    change_column :cards, :card_number, :string
  end

  def self.down
    change_column :cards, :card_number , :integer, :limit=>8
  end
end
