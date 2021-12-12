class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :cutestagram_post

    validates_presence_of :user, :cutestagram_post
end