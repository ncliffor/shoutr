class TextSubject < ActiveRecord::Base
  validates :body, presence: true
end
