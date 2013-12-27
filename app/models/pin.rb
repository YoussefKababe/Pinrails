class Pin < ActiveRecord::Base
  validates :description, length: { minimum: 5 }

  belongs_to :user
end
