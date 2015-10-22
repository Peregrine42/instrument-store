class AddShelfId < ActiveRecord::Migration
  def change
    change_table :stocks do |t|
      t.string :shelf_id
    end
  end
end
