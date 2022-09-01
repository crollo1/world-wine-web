class Wine < ApplicationRecord

    
    has_and_belongs_to_many :favourited_by_users, class_name: 'User'
    

    belongs_to :region, optional: true
    belongs_to :user, optional: true
    has_many :reviews
    
end #Wine
