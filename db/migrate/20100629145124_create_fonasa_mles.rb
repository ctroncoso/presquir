class CreateFonasaMles < ActiveRecord::Migration
  def self.up
    create_table :fonasa_mles do |t|
      t.integer :codigo
      t.string :descripcion
      t.timestamps
    end
  end
  
  def self.down
    drop_table :fonasa_mles
  end
end
