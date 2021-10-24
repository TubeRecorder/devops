# Rust DevOps

To test the build container:

    docker run --name test --rm -it --network fullstack-network tube-recorder/rust-build bash

To test the release container:

    docker run --name test --rm -it --network fullstack-network tube-recorder/rust-release bash
