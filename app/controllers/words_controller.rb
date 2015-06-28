class WordsController < ApplicationController
	def index
		@words = Word.all
	end

	def show
		@word = Word.find(params[:id])
	end

	def new
	end

	def create
		@word = Word.new(word_params)

		if @word.save
			redirect_to word_path(@word.id)
		else
			render 'new'
		end
	end


	private 
		def word_params
			params.require(:word).permit(:word, :definition)
		end

end
