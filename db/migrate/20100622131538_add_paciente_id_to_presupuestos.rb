class AddPacienteIdToPresupuestos < ActiveRecord::Migration
  def self.up
    add_column :presupuestos, :paciente_id, :integer
  end

  def self.down
    remove_column :presupuestos, :paciente_id
  end
end

