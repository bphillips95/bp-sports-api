class User < ApplicationRecord
    has_secure_password
    has_many :articles
    # validates :username, uniqueness: { case_sensitive: false }
    def full_name
        [first_name, last_name].join(' ')
    end
end
