class Mutations::BookMutation::CreateBook < Mutations::BaseMutation
  null true
	argument :title, String, required: true
	field :book, Types::BookType, null: true
	field :errors, [String], null: false
	def resolve(title:)
		b = FactoryBot.build(:book, title: title,  user: User.first)
		if b.save 
			{ book: b, error: [] }
		else
			{ book: nil, error: b.errors.full_messages }
		end	
	end
end
