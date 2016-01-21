class Friendship < ActiveRecord::Base
    belongs_to :user
    # There is no Friend class, users are friends with users.
    belongs_to :friend, :class_name => "User"
end
