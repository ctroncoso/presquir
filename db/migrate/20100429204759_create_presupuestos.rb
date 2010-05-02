class CreatePresupuestos < ActiveRecord::Migration
  def self.up
    create_table :presupuestos do |t|
      t.date :fecha_emision
      t.date :fecha_inicio_gestion
      t.integer :ejecutiva
      t.integer :plazo_gestion
      t.timestamps
    end
  end
  
  def self.down
    drop_table :presupuestos
  end
end
