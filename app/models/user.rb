class User < ApplicationRecord
    has_many :relationships
    has_many :friends, through: :relationships
    has_many :attempts
    has_many :challenges, through: :attempts
    has_many :user_achievements
    has_many :achievements, through: :user_achievements

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    has_secure_password

    
end
