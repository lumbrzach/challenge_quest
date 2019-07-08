class User < ApplicationRecord
    has_many :relationships
    has_many :attempts
    has_many :challenges, through: :attempts
    has_many :user_achievements
    has_many :achievements, through: :user_achievements
end
