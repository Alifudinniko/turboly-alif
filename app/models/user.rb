#email :string
#password_digest :string

#password :string virtual
#password_confirmation :string virtual
class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true,length: { minimum: 2 },  uniqueness: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i,  message:"Must be a valid email address"}

    has_many :task
end


