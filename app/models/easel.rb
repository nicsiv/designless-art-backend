class Easel < ApplicationRecord
    # has_one_attached :image
    belongs_to :user, foreign_key: "user_id"
    # before_save :grab_image

end

# Easel.joins(:photo_attachment).where('published_at >= ?', Time.now)