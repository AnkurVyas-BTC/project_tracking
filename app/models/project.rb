class Project < ActiveRecord::Base
  belongs_to :client
  default_scope -> { order('created_at DESC')}
	validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true
	validates :billing_type, presence: true

end
