class Mutations::BookMutation::UpdateBook < Mutations::BaseMutation
  null true
  argument :id, ID, required: true
	argument :title, String, required: true
	field :book, Types::BookType, null: true
	field :errors, [String], null: false
	def resolve(id:, title:)
    b = Book.find(id)
    b.title = title
    if b.save
			{ book: b, error: [] }
		else
			{ book: nil, error: b.errors.full_messages }
		end	
	end
end

