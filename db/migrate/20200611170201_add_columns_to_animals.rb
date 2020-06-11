class AddColumnsToAnimals < ActiveRecord::Migration[6.0]
  def change
    change_table :animals do |t|
      t.string :type, null: false
      t.string :name, null: false
    end
  end
end
