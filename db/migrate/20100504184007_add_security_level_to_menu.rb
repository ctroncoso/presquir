class AddSecurityLevelToMenu < ActiveRecord::Migration
  def self.up
    add_column :menus, :security_level, :integer
  end

  def self.down
    remove_column :menus, :security_level
  end
end
