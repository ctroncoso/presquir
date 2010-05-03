class AddAuthenticationToEjecutivas < ActiveRecord::Migration
  def self.up
    add_column :ejecutivas, :crypted_password, :string
    add_column :ejecutivas, :password_salt, :string
    add_column :ejecutivas, :persistence_token, :string
  end

  def self.down
    remove_column :ejecutivas, :persistence_token
    remove_column :ejecutivas, :password_salt
    remove_column :ejecutivas, :crypted_password
  end
end
