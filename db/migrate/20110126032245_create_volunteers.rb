class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string :name
      t.string :bio
      t.string :image
      t.integer :pledge
      t.integer :hours

      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
