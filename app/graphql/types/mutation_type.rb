module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
    field :test_write, String, null: false do
      argument :text, String, required: false
    end
    def test_write(text:)
      return "hello world!!" if !text.present?
      text
    end
  end
end
