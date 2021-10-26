# TypeScript DevOps

To test the build container:

    docker run --name test --rm -it --network fullstack-network tube-recorder/ts-builder bash

To test the release container:

    docker run --name test --rm -t --network fullstack-network tube-recorder/ts-release bash
