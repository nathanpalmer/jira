# Prerequisites

  * [Install Docker][install_docker]
  * [Install boot2docker][install_boot2docker] (if you are on Mac OS X or Windows)

# Build

The container must be built before using it.

    bin/build

# Run

This starts it up.

    bin/start

# Forwarding

In order for you to access the container you must forward the port through boot2docker.

    boot2docker ssh -L 8080:localhost:8080

# Kill it

When you are done you can remove the container

    docker kill jira
    docker rm jira


[install_docker]: https://www.docker.io/gettingstarted/#h_installation
[install_boot2docker]: https://github.com/boot2docker/boot2docker-cli/releases