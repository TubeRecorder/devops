
BUILDER_IMAGE_NAME=tube-recorder/rust-builder:latest
RELEASE_IMAGE_NAME=tube-recorder/rust-release:latest

FILE_BEAT_PATH=filebeat
FILE_BEAT_DEB=filebeat-oss-7.12.1-amd64.deb
FILE_BEAT_YAML=filebeat.yml

all:
	make clean
	make build

clean:
	docker image rm -f ${BUILDER_IMAGE_NAME}
	docker image rm -f ${RELEASE_IMAGE_NAME}

build:
	( \
		cd builder; \
		docker build \
		-t ${BUILDER_IMAGE_NAME} \
		. \
	)
	( \
		cd release; \
		docker build \
		--build-arg FILE_BEAT_PATH=${FILE_BEAT_PATH} \
		--build-arg FILE_BEAT_DEB=${FILE_BEAT_DEB} \
		--build-arg FILE_BEAT_YAML=${FILE_BEAT_YAML} \
		-t ${RELEASE_IMAGE_NAME} \
		. \
	)
