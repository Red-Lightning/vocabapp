class WordsController < ApplicationController
	def index
		@words = Word.all
	end

	def show
		@word = Word.find(params[:id])
	end

	def new
	end

	def edit
		@word = Word.find(params[:id])
	end

	def create
		params[:word][0].upcase!
		@word = Word.new(word_params)

		if @word.save
			redirect_to word_path(@word.id)
		else
			render 'new'
		end
	end

	def update
		@word = Word.find(params[:id])

		if @word.update(word_params)
			redirect_to @word
		else
			render 'edit'
		end
	end

	def destroy
		@word = Word.find(params[:id])
		@word.destroy

		redirect_to words_path
	end

	def wordlist
		@words = Word.all
	end


	private 
		def word_params
			params.require(:word).permit(:word, :definition)
		end

end
