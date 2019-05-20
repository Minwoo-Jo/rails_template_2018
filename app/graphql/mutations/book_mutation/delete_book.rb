class Mutations::BookMutation::DeleteBook < Mutations::BaseMutation
  null true
	argument :id, ID, required: true

	field :book, Types::BookType, null: true
	field :errors, [String], null: false
	
  def resolve(id:)
    b = Book.find(id)
		if b.destroy 
			{ book: b, error: [] }
		else
			{ book: nil, error: b.errors.full_messages }
		end	
	end
end

