
# Sandbox: Apache Airflow

## Prerequisites

* Docker
* make

## Usage

```sh
# To prepare environment
make init

# To start & stop
make start
make stop

# To destroy the environment
make destroy
```

One you have the environment running with `make start`, then
go to http://localhost:8080 . Login information is

    User name: airflow
    Password: airflow

## References

* [Running Airflow in Docker](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html)
* [Apache Airflow Quick Start](https://airflow.apache.org/docs/apache-airflow/stable/start.html)
