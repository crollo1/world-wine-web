class Wine < ApplicationRecord

    belongs_to :regions, optional: true
    # belong_to :users
    has_many :reviews
    
end #Wine
