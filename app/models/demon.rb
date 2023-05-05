class Demon < ApplicationRecord

  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true



end
