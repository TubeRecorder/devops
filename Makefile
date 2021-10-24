
restart:
	make down
	make up

up:
	make database_up
	make rust_all
	make ts_all

down:
	make database_down

database_up:
	(cd database; docker-compose up -d)

database_down:
	(cd database; docker-compose down)

rust_all:
	(cd rust; make all)

ts_all:
	(cd ts; make all)
