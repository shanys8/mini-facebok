class Status < ActiveRecord::Base
	has_many :comments
	validates :text, presence: true, length: { minimum: 2, maximum: 20 }
end
