class Article < ActiveRecord::Base
	validates :title, confirmation: true#, presence: true
	validates :title_confirmation, presence: true
	validates :terms_of_service, acceptance: true
	has_many :comments, dependent: :destroy
	#validates :title, presence: true,
					  #length: { minimum: 5 }
end
