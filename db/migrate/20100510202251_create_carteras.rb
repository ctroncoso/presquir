class CreateCarteras < ActiveRecord::Migration
  def self.up
    create_table :carteras do |t|
      t.string :codigo
      t.string :empresa
      t.string :rut
      t.string :holding
      t.string :agencia
      t.string :contacto
      t.string :cargo
      t.string :telefono
      t.string :telefono_celular
      t.string :direccion
      t.string :comuna
      t.string :referencia_dir
      t.string :estado
      t.boolean :cartera
      t.boolean :afiliada
      t.timestamps
    end
  end

  def self.down
    drop_table :carteras
  end
end

