class User < ApplicationRecord
    has_many :recipes, through: :user_recipes
    has_many :user_recipes
    has_many :user_restaurants
    has_many :restaurants, through: :user_restaurants
    has_many :events
    has_many :favorites
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
