class AddInterestsToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :interests, :string
  end

  def self.down
    remove_column :volunteers, :interests
  end
end
