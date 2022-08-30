class Wine < ApplicationRecord

    belongs_to :region, optional: true
    belongs_to :user, optional: true
    has_many :reviews
    
end #Wine
