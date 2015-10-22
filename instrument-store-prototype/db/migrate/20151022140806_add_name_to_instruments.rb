class AddNameToInstruments < ActiveRecord::Migration
  def change
    change_table :instruments do |t|
      t.string :name
    end
  end
end
