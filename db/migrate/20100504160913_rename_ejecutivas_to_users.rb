class RenameEjecutivasToUsers < ActiveRecord::Migration
    def self.up
        rename_table :ejecutivas, :users
    end
    def self.down
        rename_table :users, :ejecutivas
    end
end

