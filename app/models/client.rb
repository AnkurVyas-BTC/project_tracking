class Client < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50}
  validates :country, presence: true



end
