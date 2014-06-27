class User < ActiveRecord::Base
	validates :name, length: {maximum: 50}, presence: true
	validates :description, presence:true
	validates :billing_type, presence:true
end
