class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :savelists
  def email_required?
  false
end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :omniauthable, omniauth_providers: %i[twitter]
         
  validates :password, length: { minimum: 8, maximum: 20 }, unless: -> { password.nil? }
   validates :email, format: {with: /\A(.+)@(.+)[.](.+)\z/, message: "format is invalid", unless: -> {email.nil?} }
  
 def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[8, 12]
    user.save!

   end   
end


end