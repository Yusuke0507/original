class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :reservation

  with_options presence: true do
    validates :nickname
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/}
    validates :prefecture
    validates :municipality
    validates :address
    validates :phone, format: {with: /\A0[0-9]{9,10}\z/ }
  end
end
