class AddLoginToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :password, :string
    add_column :products, :email, :string
  end

  def self.down
    remove_column :products, :email
    remove_column :products, :password
  end
end
