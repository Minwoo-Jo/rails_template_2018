module Queries
	class UserQuery < Types::QueryType
    field :users, [Types::UserType], null: true
    field :user, Types::UserType, null: true do
      description "Find a User by ID"
      argument :id, ID, required: true
    end
    field :books, [Types::BookType], null: true
    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
    def books
      object.books
    end
	end
end



