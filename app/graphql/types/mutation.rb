module Types
  class Mutation < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

		field :create_book, mutation: Mutations::BookMutation::CreateBook
		field :delete_book, mutation: Mutations::BookMutation::DeleteBook
		field :update_book, mutation: Mutations::BookMutation::UpdateBook
  end
end
