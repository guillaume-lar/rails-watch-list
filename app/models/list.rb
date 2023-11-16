class List < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks # throught : à travers bookmarks
    validates :name, :uniqueness => true 
    validates :name, presence: true
end
