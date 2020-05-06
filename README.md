# Google Keep Clone - Back-end

Um app web baseado no Google Keep para ensinar os fundamentos do desenvolvimento web.


## Pré-requisitos

Essa aplicação back-end foi construída utilizando Ruby on Rails.

Portanto você precisa instalar o Ruby ([Windows](https://rubyinstaller.org/downloads/), [Linux](https://rvm.io/rvm/install)) e depois a linha de comando do Rails.

Depois de instalar o Ruby você vai ter o comando `gem`, aí é só rodar:

```bash
gem install rails
```

## Instalar as dependências

Depois de instalar o Ruby e a linha de comando do Rails você precisa instalar as dependências específicas do projeto.

Em um terminal dentro da pasta do projeto rode o comando:

```bash
bundle install
```

Se por algum motivo o bundler não foi instalado e deu erro no comando anterior, rode o seguinte comando:

```bash
gem install bundler
```

Depois:

```bash
bundle install
```

### Criando o banco de dados

Essa aplicação está configurada com o banco de dados SQLite para portabilidade, por ser uma aplicação com fins didáticos.

Para criar o arquivo do banco de dados e subir a estrutura do banco rode o seguinte comando:

```bash
rails db:create db:migrate
```

Para cadastrar algumas tarefas de exemplo no banco de dados rode:

```bash
rails db:seed
```

### Rodando a aplicação

Para subir o servidor de desenvolvimento com a aplicação rode o seguinte comando dentro da pasta do projeto:

```bash
rails server
```

ou

```bash
rails s
```
