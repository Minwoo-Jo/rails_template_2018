class Types::BaseField < GraphQL::Schema::Field
  def initialize(*args, null: false, camelize:false, **kwargs, &block)
    super
  end
end
