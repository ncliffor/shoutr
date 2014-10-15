class ImageSubject < ActiveRecord::Base
  validates :url, presence: true
end
