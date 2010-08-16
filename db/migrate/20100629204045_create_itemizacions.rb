class CreateItemizacions < ActiveRecord::Migration
  def self.up
    create_table :itemizacions do |t|
      t.integer :presupuesto_id
      t.integer :fonasa_mle_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itemizacions
  end
end
