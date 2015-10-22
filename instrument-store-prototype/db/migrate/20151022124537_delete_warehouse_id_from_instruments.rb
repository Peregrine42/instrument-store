class DeleteWarehouseIdFromInstruments < ActiveRecord::Migration
  def up
    change_table :instruments do |t|
      t.remove :warehouse_id
    end
  end
  
  def down
    change_table :instruments do |t|
      t.integer :warehouse_id
    end
  end
end
