class AddEstadoToPresupuesto < ActiveRecord::Migration
  def self.up
    add_column :presupuestos, :estado, :integer, :default => 0
    remove_column :presupuestos, :pendiente
  end

  def self.down
    remove_column :presupuestos, :estado
    add_column :presupuestos, :pendiente, :boolean
  end
end
