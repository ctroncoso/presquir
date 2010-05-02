class CreateEjecutivas < ActiveRecord::Migration
  def self.up
    create_table :ejecutivas do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido_materno
      t.string :apellido_paterno
      t.date :fecha_contratacion
      t.timestamps
    end
  end
  
  def self.down
    drop_table :ejecutivas
  end
end
