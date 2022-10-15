class Color < ApplicationRecord
    validates :name, presence: true
    validates :mood, presence: true
end
