class Post < ActiveRecord::Base
  belongs_to :category
  validates :title, length: { maximum: 255 }, presence: true

  default_scope { order(updated_at: :desc).includes(:category) }

  self.per_page = 4
end
