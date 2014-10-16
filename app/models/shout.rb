class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject, polymorphic: true, dependent: :destroy

  validates :user_id, presence: true
end
