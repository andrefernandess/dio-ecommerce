# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "fornecedor", "fornecedores"
  inflect.irregular "carro", "carros"

  inflect.irregular "cão", "cães"
  inflect.irregular "mão", "mãos"
  inflect.irregular "pão", "pães"
end
