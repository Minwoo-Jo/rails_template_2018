module Queries
	class BookQuery < Types::QueryType
    field :books, [Types::BookType], null: true
    field :book, Types::BookType, null: true do
      description "Find a book by ID"
      argument :id, ID, required: true
    end
    def books 
      Book.all
    end

    def book(id:)
      Book.find(id)
    end
	end
end

