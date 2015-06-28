class Word < ActiveRecord::Base
	validates :word, presence: true, length: { minimum:2 }
	validates :definition, presence: true
end
