class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :menu_id
  has_one_attached :image
end
