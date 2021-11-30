class User < ActiveRecord::Base
    has_many :cutestagram_posts
    has_many :comments
    has_many :likes

    validates :email, :username, uniqueness: true
    validates :email, :username, :avatar_url, :password, presence: true
end