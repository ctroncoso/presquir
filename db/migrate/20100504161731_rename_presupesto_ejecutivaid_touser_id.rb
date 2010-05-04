class RenamePresupestoEjecutivaidTouserId < ActiveRecord::Migration
  def self.up
    rename_column :presupuestos, "ejecutiva_id", "user_id"
  end

  def self.down
    rename_column :presupuestos, "user_id", "ejecutiva_id"
  end
end

