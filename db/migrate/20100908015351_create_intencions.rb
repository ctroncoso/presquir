class CreateIntencions < ActiveRecord::Migration
  def self.up
    create_table :intencions do |t|
      t.integer :presupuesto_id
      t.string :intencion
      t.string :principal
      t.integer :atencion
      t.integer :recomendacion
      t.integer :confianza_hts
      t.integer :confianza_medico
      t.integer :precio
      t.integer :isapre
      t.integer :seguro_comp
      t.integer :convenio
      t.timestamps
    end
  end
  
  def self.down
    drop_table :intencions
  end
end
