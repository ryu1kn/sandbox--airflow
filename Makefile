mount_dirs := ./dags ./logs ./plugins ./config

.PHONY: init start destroy

init:
	mkdir -p $(mount_dirs)
	echo "AIRFLOW_UID=$$(id -u)" > .env
	docker compose up airflow-init

start:
	docker compose up

stop:
	docker compose down --remove-orphans

destroy:
	docker compose down --volumes --remove-orphans --rmi all
	rm -rf $(mount_dirs) .env
