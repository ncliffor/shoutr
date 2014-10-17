class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject, polymorphic: true, dependent: :destroy
  has_many :favorites

  validates :user_id, presence: true
end
