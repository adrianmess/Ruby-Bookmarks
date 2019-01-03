class BooksController < ApplicationController
	def index
		@books = @Books.order(created_at: :desc).all
	end
end
