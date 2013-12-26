class Pin < ActiveRecord::Base
  validates :description, length: { minimum: 5 }
end
