# Golang Migration

[<< Back](README.md)

This method uses [Golang Migrate](https://github.com/golang-migrate/migrate) project.

## Summary

- [Golang Migration](#golang-migration)
  - [Summary](#summary)
  - [Depedencies](#depedencies)
  - [Running](#running)
  - [Testing locally](#testing-locally)

## Depedencies

- [Docker](https://www.docker.com/)
- [Make](https://www.gnu.org/software/make)
- [Golang Migrate](https://github.com/golang-migrate/migrate)

## Running

First we need to create the migration make file command:

```Makefile
migrate-up:
  docker compose --profile tools up -d
```

Now we need to implement in `docker-compose.yml` the following container description:

```yml
version: "3.8"
services:
  db:
  ...

  migration:
    image: migrate/migrate:v4.17.0
    container_name: migration_container
    volumes:
      - ./migrations:/migrations
    entrypoint:
      [
        "migrate",
        "-path",
        "/migrations",
        "-database",
        "postgres://root:root@db:5432/4sync?sslmode=disable",
      ]
    command: ["up"]
    depends_on:
      - db
    restart: on-failure
```

This will pull the `migrate/migrate:v4.17.0` image to run the migrations in the `migrations` folder.

We can't forget to remove the `migrations` volume on the `db` container. Please remove that line in `docker-compose.yml`:

```yml
volumes:
  - ./migrations:/docker-entrypoint-initdb.d
```

So, now we can use the `migration` container running the following command:

```bash
make migrate-up
```

The docker compose will start the `migration_container` and will run the migrations into the `postgres_container` database.

## Testing locally

In this repository we have a binary of `migrate` app. To test the migrations locally we can use the following command:

```bash
./golang-migrate/migrate -path ../migrations -database "postgres://root:root@db:5432/4sync?sslmode=disable" up
```

---

[Reginaldo Morais](mailto:reginaldo.cmorais@gmail.com)
