FROM elixir:1.8

RUN mkdir /app

WORKDIR /app

# The --force flag does the installation
# without a shell prompt
RUN mix local.hex --force \
    && mix archive.install hex phx_new 1.4.8
