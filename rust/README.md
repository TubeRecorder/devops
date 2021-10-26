# Rust DevOps

To test the build container:

    docker run --name test --rm -it --network fullstack-network tube-recorder/rust-builder bash

To test the release container:

    docker run --name test --rm -it --network fullstack-network tube-recorder/rust-release bash

To test the download container:

    docker run --name test --rm -it --network fullstack-network tube-recorder/rust-release-download bash
