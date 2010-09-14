class AddEstadoToPresupuesto < ActiveRecord::Migration
  def self.up
    add_column :presupuestos, :estado, :integer, :default => 0
  end

  def self.down
    remove_column :presupuestos, :estado
  end
end
