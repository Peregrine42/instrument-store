class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.belongs_to :instrument
      t.belongs_to :warehouse
      t.integer :amount
    end
  end
end
