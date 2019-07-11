class Challenge < ApplicationRecord
    has_many :attempts
    has_many :users, through: :attempts

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, uniqueness: true
    
end
