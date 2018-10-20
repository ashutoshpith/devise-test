class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
   
         def self.from_omniauth(auth)
          # Check out the Auth Hash function at https://github.com/mkdynamic/omniauth-facebook#auth-hash
          # and figure out how to get email for this user.
          # Note that Facebook sometimes does not return email,
          # in that case you can use facebook-id@facebook.com as a workaround
          email = auth[:info][:email] || "#{auth[:uid]}@facebook.com"
          user = where(email: email).first_or_initialize
          #
          # Set other properties on user here. Just generate a random password. User does not have to use it.
          # You may want to call user.save! to figure out why user can't save
          #
          # Finally, return user
          user.save && user
        end
protected
  def confirmation_required?
    true
  end
end
