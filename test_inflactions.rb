# test_inflections.rb
require 'active_support'
require 'active_support/inflector'
require 'active_support/inflections'

# Carrega manualmente o arquivo de inflexões do Rails
inflections_file = File.expand_path('config/initializers/inflections.rb', __dir__)
load inflections_file if File.exist?(inflections_file)

puts "=== 🔍 Teste de inflexões carregadas ==="
puts
puts "Plural de 'fornecedor': #{ActiveSupport::Inflector.pluralize('fornecedor')}"
puts "Singular de 'fornecedores': #{ActiveSupport::Inflector.singularize('fornecedores')}"
puts
puts "Plural de 'carro': #{ActiveSupport::Inflector.pluralize('carro')}"
puts "Singular de 'carros': #{ActiveSupport::Inflector.singularize('carros')}"
puts
puts "Plural de 'pão': #{ActiveSupport::Inflector.pluralize('pão')}"
puts "Singular de 'pães': #{ActiveSupport::Inflector.singularize('pães')}"
puts
puts "=== ⚙️  Regras registradas ==="

inflections = ActiveSupport::Inflector.inflections

# Infelizmente, ActiveSupport não expõe diretamente as regras internas.
# Então mostramos as listas de "uncountables" (essas sim são públicas)
puts "\n🔸 Palavras não contáveis:"
puts inflections.uncountables.to_a.join(', ')

puts "\n=== ✅ Teste concluído ==="
