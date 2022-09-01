class User < ApplicationRecord


    # vaildates :name, length: { minimum: 2 }
    validates :email, presence: true, uniqueness: true

    has_secure_password

    has_and_belongs_to_many :wines, optional: true

    has_many :wines, dependent: :destroy
    has_many :reviews, dependent: :destroy 

end
