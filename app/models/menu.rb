class Menu < ActiveHash::Base
  self.data = [
  { id: 1, name: '季節のおまかせコース', price: '8,800'},
  { id: 2, name: '海鮮鍋セットコース', price: '10,800'},
  { id: 3, name: '季節のおまかせコース + 2時間飲み放題', price: '12,800'},
  { id: 4, name: '海鮮鍋セットコース + 2時間飲み放題', price: '15,000'}
  ]

  include ActiveHash::Associations
  has_many :reservations
end 