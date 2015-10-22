class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.belongs_to :warehouse, index: true
    end
  end
end
