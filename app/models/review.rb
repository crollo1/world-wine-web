class Review < ApplicationRecord

    belongs_to :wine, optional: true

end
