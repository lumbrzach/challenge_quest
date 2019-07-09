class Challenge < ApplicationRecord
    has_many :attempts
    has_many :users, through: :attempts
end
