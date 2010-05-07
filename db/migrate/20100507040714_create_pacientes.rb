class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes do |t|
      t.integer :ficha
      t.string :rut
      t.string :fono_fijo
      t.string :celular
      t.string :mail
      t.integer :tipo_paciente_id
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.timestamps
    end
  end
  
  def self.down
    drop_table :pacientes
  end
end
