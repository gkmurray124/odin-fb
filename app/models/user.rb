class User < ApplicationRecord
    has_many :posts,
    foreign_key: :poster_id,
    dependent: :destroy

    validates :name, presence: true 
    validates :password, presence: true 
    validates :email, presence: true
    validates :birthday, presence: true 
end
