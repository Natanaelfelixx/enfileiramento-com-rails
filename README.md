# Rails API com Sidekiq e ActiveJob

Esta aplicação é uma API Rails projetada para demonstrar o uso do Sidekiq em conjunto com ActiveJob para processamento assíncrono de tarefas, melhorando significativamente a performance e a capacidade de resposta da aplicação.

## Sobre o Projeto

Esta API Rails utiliza:
- Sidekiq para gerenciamento de filas de tarefas
- ActiveJob como interface para enfileiramento de jobs
- Redis como backend para o Sidekiq

O objetivo é mostrar como tarefas demoradas podem ser movidas para background jobs, permitindo que a API responda rapidamente às requisições dos clientes.

## Requisitos

- Docker
- Docker Compose

## Configuração e Execução

1. Clone o repositório:
   ```
   git clone [URL_DO_SEU_REPOSITORIO]
   cd [NOME_DO_SEU_PROJETO]
   ```

2. Configure as credentials do Rails:
   ```
   EDITOR="nano" rails credentials:edit
   ```
   Isso abrirá o arquivo de credentials no editor especificado. Adicione suas configurações sensíveis aqui, por exemplo:
   ```yaml
   secret_key_base: sua_chave_secreta_aqui
   # Adicione outras configurações conforme necessário
   ```

3. Construa e inicie os containers:
   ```
   docker-compose up --build
   ```

   Isso irá iniciar três serviços:
   - A aplicação Rails (API)
   - O worker Sidekiq
   - O servidor Redis

4. A API estará disponível em `http://localhost:3000`

## Uso

[Adicione aqui exemplos de como usar sua API, incluindo endpoints disponíveis e como enfileirar jobs]

## Monitoramento

O Sidekiq fornece um painel web para monitoramento de jobs. Para acessá-lo:

1. Certifique-se de que a aplicação está rodando
2. Acesse `http://localhost:3000/sidekiq` em seu navegador

## Desenvolvimento

Para desenvolvimento local sem Docker:

1. Instale as dependências:
   ```
   bundle install
   ```

2. Inicie o servidor Redis localmente

3. Em um terminal, inicie o servidor Rails:
   ```
   rails server
   ```

4. Em outro terminal, inicie o Sidekiq:
   ```
   bundle exec sidekiq
   ```

## Testes

Testes para o projeto serão escritos a medida que o código for sendo desenvolvido.