module Types
  class QueryType < Types::BaseObject
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
		field :get_books, resolver: Queries::BookQuery::GetBooks
		field :get_book, resolver: Queries::BookQuery::GetBook
    field :get_users, resolver: Queries::UserQuery::GetUsers
    field :get_user, resolver: Queries::UserQuery::GetUser
  end
end
