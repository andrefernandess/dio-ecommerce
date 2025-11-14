// ...existing code...
# Projeto inicial DIO RR

Descrição
---------
Projeto de exemplo em Ruby on Rails usado no curso DIO. Contém recursos mínimos para gerenciar Carros e Fornecedores, seeds, rotas customizadas e exemplos de deploy com Docker/Kamal.

Requisitos
---------
- Ruby 3.4.7 (ver [.ruby-version](.ruby-version))
- PostgreSQL (ou ajuste em [config/database.yml](config/database.yml))
- Node/npm (opcional para assets)
- Bundler (gem)

Instalação local
----------------
1. Instalar dependências:
-------------------------
- bundle install

2. Configurar banco (copiar/editar `config/database.yml` se necessário) e preparar:
----------------------------------------------------------------------------------
bin/setup

bin/rails db:prepare
bin/rails db:seed

Como rodar
---------
- Servidor de desenvolvimento:
  - rails s

Banco de dados e seeds
----------------------
- Seeds disponíveis em [db/seeds.rb](db/seeds.rb).
- Migrations em [db/migrate/](db/migrate/).

Principais rotas e controllers
------------------------------
- Rotas de carros: veja [config/routes.rb](config/routes.rb) e ações em [`CarrosController#criar`](app/controllers/carros_controller.rb) / [`CarrosController#alterar`](app/controllers/carros_controller.rb).
- Modelos: [`Carro`](app/models/carro.rb) e [`Fornecedor`](app/models/fornecedor.rb).
- Fornecedores CRUD gerado via resources: [`FornecedoresController`](app/controllers/fornecedores_controller.rb).

Testes
------
- Executar suíte de testes:
---------------------------
- rails test

- System tests (CI): ver [.github/workflows/ci.yml](.github/workflows/ci.yml).

Deploy / Docker
---------------
- Imagem Docker e entrada: [Dockerfile](Dockerfile) e [bin/docker-entrypoint](bin/docker-entrypoint).
- Deploy com Kamal: [config/deploy.yml](config/deploy.yml) e binário [bin/kamal](bin/kamal).

Arquivos úteis
--------------
- Rotas: [config/routes.rb](config/routes.rb)
- Seeds: [db/seeds.rb](db/seeds.rb)
- Setup local: [bin/setup](bin/setup)
- Dev server: [bin/dev](bin/dev)
- Controller Carros: [app/controllers/carros_controller.rb](app/controllers/carros_controller.rb)
- Model Carro: [app/models/carro.rb](app/models/carro.rb)
- Model Fornecedor: [app/models/fornecedor.rb](app/models/fornecedor.rb)
- Inflexões PT-BR: [config/initializers/inflections.rb](config/initializers/inflections.rb) (teste em [test_inflactions.rb](test_inflactions.rb))
