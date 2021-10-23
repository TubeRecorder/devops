
restart:
	make down
	make up

up:
	make rust_all
	make ts_all

down:
	echo "nothing"

rust_all:
	(cd rust; make all)

ts_all:
	(cd ts; make all)
