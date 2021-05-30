class DogPark < ActiveRecord::Base
    belongs_to :user
    validates :name, :address, :neighborhood, :size, :water, presence: :true
end
