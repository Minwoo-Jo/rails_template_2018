module Queries
	class UserQuery::GetUsers < Queries::BaseQuery
    type [Types::UserType], null: true

    def resolve
      User.all
    end
  end
end




