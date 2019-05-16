class Types::UserType < Types::BaseObject
  description "A User"
  field :id, ID, null: false
  field :provider, String, null: false
  field :uid, String, null: false
  field :books, [Types::BookType], null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
end

