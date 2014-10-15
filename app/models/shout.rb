class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject, polymorphic: true

  validates :user_id, presence: true
end
