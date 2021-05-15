class CreateDogParks < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_parks do |t|
      t.string :name
      t.string :neighborhood
      t.string :size
      t.string :water
      t.timestamps null: false
    end
  end
end
