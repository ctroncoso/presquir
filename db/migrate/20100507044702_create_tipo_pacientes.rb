class CreateTipoPacientes < ActiveRecord::Migration
  def self.up
    create_table :tipo_pacientes do |t|
      t.string :clase
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tipo_pacientes
  end
end
