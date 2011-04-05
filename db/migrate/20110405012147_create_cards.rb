class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.integer :card_number
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
