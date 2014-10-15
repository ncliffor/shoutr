class TextSubject < ActiveRecord::Base
  validates :body, presence: true

  private

  def body=(new_body)
    self[:body] = new_body.upcase
  end
end
