class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :cutestagram_post

    validates_presence_of :text, :user, :cutestagram_post
end