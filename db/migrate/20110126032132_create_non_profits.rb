class CreateNonProfits < ActiveRecord::Migration
  def self.up
    create_table :non_profits do |t|
      t.string :name
      t.string :mission
      t.string :bio
      t.string :image
      t.integer :pledge
      t.integer :hours

      t.timestamps
    end
  end

  def self.down
    drop_table :non_profits
  end
end
