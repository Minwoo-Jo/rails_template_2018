module Queries
  class BookQuery::GetBook < Queries::BaseQuery
    argument :id, ID, required: true
    type Types::BookType, null: true
    
    def resolve(id:)
       Book.find(id)
    end
  end
end

