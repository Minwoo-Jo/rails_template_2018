module Queries
	class UserQuery::GetUser < Queries::BaseQuery
	  argument :id, ID, required: true
    type Types::UserType, null: true

    def resolve(id:)
      User.find(id)
    end
  end
end



