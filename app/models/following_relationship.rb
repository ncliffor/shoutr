class FollowingRelationship < ActiveRecord::Base
  belongs_to :followed_user, class_name: "User"

  validate :user_is_not_following_themself

  private

  def user_is_not_following_themself
    if follower_id == followed_user_id
      errors.add(:base, "Users cannot follow themselves")
    end
  end
end
