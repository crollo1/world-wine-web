class Wine < ApplicationRecord

    
    has_and_belongs_to_many :users, optional: true
    

    belongs_to :region, optional: true
    belongs_to :user, optional: true
    has_many :reviews
    
end #Wine
