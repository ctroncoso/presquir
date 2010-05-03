class AddUsernameToEjecutivas < ActiveRecord::Migration
  def self.up
    add_column :ejecutivas, :username, :string
  end

  def self.down
    remove_column :ejecutivas, :username
  end
end
