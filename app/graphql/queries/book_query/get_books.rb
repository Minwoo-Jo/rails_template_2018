module Queries
  class BookQuery::GetBooks < Queries::BaseQuery
    
    type [Types::BookType], null: true

    def resolve
      Book.all
    end
  end
end
