# KafkaTest ops

## Docker

### Before you start: project name container config

The `project name` is by default the directory from where the `docker-compose` command is run,
which is `ops`. Because we have other projects with a similar structure as this project, which also
have the folder `ops`, we strongly suggest you to change the `project name` to avoid
container collisions.

This can be changed in the following ways:

- add a `.env` file to the `./ops` directory with property `COMPOSE_PROJECT_NAME=kafka_test`
- add a flag to the command: `docker-compose up -d -p kafka_test`

Please note:

- You're free to choose your `application name`. In our example we chose `kafka_test`.
- Project names must contain only lowercase letters, decimal digits, dashes, and underscores,
  and must begin with a lowercase letter or decimal digit.

All other configuration is contained in the `docker-compose.yml` files.

### The containers

KafkaTest currently has the following containers:

- kafka-zookeeper: zookeeper container required for kafka.
- kafka-broker: the kafka broker to connect to.
- kafka-postgres: the postgresql database for this application. 

### Starting the containers

These can all be started together by running the command `docker-compose up -d` from your terminal in the `./ops` directory.

The containers can also be created separately, by running the `docker-compose up -d` command in the subdirectories.

