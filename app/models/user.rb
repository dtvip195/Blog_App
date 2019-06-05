class User < ApplicationRecord
  devise :database_authenticatable, :rememberable,
    :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum role: {user: 0, admin: 1}

  def self.from_omniauth auth
    if user = User.find_by_email(auth.info.email)
      if auth.info.image.present?
        user.update_attribute(:avatar, auth.info.image)
      end
      user
    else
      User.create!(email: auth.info.email,
                   name: auth.info.name,
                   avatar: auth.info.image,
                   password: Devise.friendly_token[0, 20])
    end
  end

  def self.new_with_session params, session
    super.tap do |user|
      if data = session["devise.facebook_data"] &&
                session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
