# PostgreSQL + PgAdmin4 by Docker Compose

This project is an example of a development environment using PostgreSQL with Docker, with persisted volume and data migration script.

## Summary

- [PostgreSQL + PgAdmin4 by Docker Compose](#postgresql--pgadmin4-by-docker-compose)
  - [Summary](#summary)
  - [Depedencies](#depedencies)
  - [Running](#running)
  - [Access the PgAdmin4](#access-the-pgadmin4)
  - [Using Golang Migration](#using-golang-migration)

## Depedencies

- [Docker](https://www.docker.com/)
- [Make](https://www.gnu.org/software/make)

## Running

To start the containers:

```bash
make up
```

To stop the containers without removing them:

```bash
make down
```

If you want to remove the containers:

```bash
make destroy
```

## Access the PgAdmin4

To access the PgAdmin4, use the following url: [http://localhost:5050](http://localhost:5050).

The username is `admin@admin.com` and the password is `xpto`.

## Using Golang Migration

If you want to use Golang Migration, please refer to [Golang Migration](GOLANG_MIGRATION.md).

---

[Reginaldo Morais](mailto:reginaldo.cmorais@gmail.com)
