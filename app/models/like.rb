class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :cutestagram_post
end