class ImageSubject < ActiveRecord::Base
  has_one :shout, as: :subject

  validates :url, presence: true
end
