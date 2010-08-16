class AddPrevisionToPresupuestos < ActiveRecord::Migration
  def self.up
    add_column :presupuestos, :prevision_id, :integer
  end

  def self.down
    remove_column :presupuestos, :prevision_id
  end
end
