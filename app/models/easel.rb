class Easel < ApplicationRecord
    has_one_attached :photo
    belongs_to :user, foreign_key: "user_id"
end

Easel.joins(:photo_attachment).where('published_at >= ?', Time.now)