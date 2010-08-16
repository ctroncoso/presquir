class RemoveSeguroComplementarioFromPrevision < ActiveRecord::Migration
  def self.up
    remove_column :previsions, :seguro_complementario
  end

  def self.down
    add_column :previsions, :seguro_complementario, :boolean
  end
end

