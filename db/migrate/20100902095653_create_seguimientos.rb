class CreateSeguimientos < ActiveRecord::Migration
  def self.up
    create_table :seguimientos do |t|
      t.integer :presupuesto_id
      t.text :comentario

      t.timestamps
    end
  end

  def self.down
    drop_table :seguimientos
  end
end
