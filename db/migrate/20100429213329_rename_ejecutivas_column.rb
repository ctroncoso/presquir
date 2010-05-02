class RenameEjecutivasColumn < ActiveRecord::Migration
  def self.up
    rename_column :presupuestos, "ejecutiva", "ejecutiva_id"
  end

  def self.down
    rename_column :presupuestos, "ejecutiva_id", "ejecutiva"
  end
end
