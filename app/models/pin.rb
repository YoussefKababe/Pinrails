class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { thumb: "300x200>" }

  validates :description, length: { minimum: 5 }
  validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpeg", "image/jpg", "image/png"] },
    size: { less_than: 5.megabytes }
end
