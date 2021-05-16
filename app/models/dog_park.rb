class DogPark < ActiveRecord::Base
    belongs_to :user
    validates :name, :neighborhood, :size, :water, presence: :true
end
