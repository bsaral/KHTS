class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :username, :role
  has_secure_password
  
  ROLES = %w[manager user]

    def role?(base_role)
        ROLES.index(base_role.to_s) <= ROLES.index(role)
    end
end
