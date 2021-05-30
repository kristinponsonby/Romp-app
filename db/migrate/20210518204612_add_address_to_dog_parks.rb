class AddAddressToDogParks < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_parks, :address, :string
  end
end
