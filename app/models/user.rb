class User < ApplicationRecord
    has_many :easels, dependent: :destroy

end
