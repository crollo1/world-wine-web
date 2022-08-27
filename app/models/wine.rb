class Wine < ApplicationRecord

    belongs_to :regions
    belongs_to :users
    has_many :reviews
    
end #Wine
