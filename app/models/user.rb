#email :string
#password_digest :string

#password :string virtual
#password_confirmation :string virtual
class User < ApplicationRecord
    has_secure_password
    validates :username, presence:true
    validates :email, presence: true, format: { with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i,  message:"Must be a valid email address"}
end

