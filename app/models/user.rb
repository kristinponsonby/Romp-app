class User < ActiveRecord::Base
    has_many :dog_parks
    has_secure_password
    validates :username, uniqueness: true
    validates :password, length: { in: 6..20 }
   
end
