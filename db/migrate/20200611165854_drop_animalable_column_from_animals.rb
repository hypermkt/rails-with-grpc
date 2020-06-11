class DropAnimalableColumnFromAnimals < ActiveRecord::Migration[6.0]
  def change
    change_table :animals do |t|
      t.remove_references :animalable, polymorphic: true
    end
  end
end
