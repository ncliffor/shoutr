class Favorite < ActiveRecord::Base
  belongs_to :shout
  belongs_to :user
end
