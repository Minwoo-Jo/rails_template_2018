class RailsTemplateSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  query(Queries::BookQuery)
  query(Queries::UserQuery)
end
