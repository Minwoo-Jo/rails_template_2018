class RailsTemplateSchema < GraphQL::Schema
  mutation(Types::Mutation)
  query(Types::QueryType)
end
