class AddCarteraIdToPresupuesto < ActiveRecord::Migration
  def self.up
    add_column :presupuestos, :cartera_id, :integer
  end

  def self.down
    remove_column :presupuestos, :cartera_id
  end
end

