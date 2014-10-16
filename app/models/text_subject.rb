class TextSubject < ActiveRecord::Base
  has_one :shout, as: :subject

  validates :body, presence: true

  def body=(new_body)
    self[:body] = new_body.upcase
  end
end
