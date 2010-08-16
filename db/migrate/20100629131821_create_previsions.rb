class CreatePrevisions < ActiveRecord::Migration
  def self.up
    create_table :previsions do |t|
      t.string :name
      t.boolean :seguro_complementario
      t.timestamps
    end
  end
  
  def self.down
    drop_table :previsions
  end
end
