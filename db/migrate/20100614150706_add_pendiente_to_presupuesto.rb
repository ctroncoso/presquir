class AddPendienteToPresupuesto < ActiveRecord::Migration
  def self.up
    add_column :presupuestos, :pending, :boolean
  end

  def self.down
    remove_column :presupuestos, :pending
  end
end
