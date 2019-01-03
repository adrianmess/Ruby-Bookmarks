class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	def show
		#retrieve a single book, and save it in @book. Then we retrieve all of it's reviews and save them in @reviews. The has_many / belongs_to association lets us query for reviews like this
		@book = Book.find(params[:id])
		@reviews = @book.reviews
	end
end
