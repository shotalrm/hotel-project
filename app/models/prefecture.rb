class Prefecture < ApplicationRecord
    include JpPrefecture
    jp_prefecture :prefecture_code
    has_many :hotels
end
