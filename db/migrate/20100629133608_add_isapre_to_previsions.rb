class AddIsapreToPrevisions < ActiveRecord::Migration
  def self.up
    add_column :previsions, :isapre, :boolean
  end

  def self.down
    remove_column :previsions, :isapre
  end
end
