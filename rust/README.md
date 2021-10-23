# Rust DevOps

To test the build container:

    docker run --name test --rm --network fullstack-network -it my-build/rust-build bash

To test the release container:

    docker run --name test --rm --network fullstack-network -it my-build/rust-release bash
