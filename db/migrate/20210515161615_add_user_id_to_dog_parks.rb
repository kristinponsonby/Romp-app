class AddUserIdToDogParks < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_parks, :user_id, :integer
  end
end
