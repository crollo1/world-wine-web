class Wine < ApplicationRecord

    belongs_to :region, optional: true
    # belong_to :users
    has_many :reviews
    
end #Wine
