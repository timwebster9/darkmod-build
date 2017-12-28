# Darkmod Docker Build

Using Docker provides an isolated, immutable build environment for multiple target platforms.  As you can see in the Dockerfile, all dependencies are part of the build image, removing the need for any local OS setup.  This could be expanded with other required binaries and dependencies.

## Step-by-step Guide

### Install Docker
Instructions for Ubuntu here: https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

Instructions for other distros (e.g. Debian, Mac, Fedora, etc.) are there on the left-hand pane.

### Build the darkmod build image

This is a one-off task, and the image will persist on disk until you explicitly remove it.

    docker build -t darkmod-build:latest .

### Build darkmod

This uses the Docker image built in the previous step to build Darkmod.  The `-v` argument mounts your local Darkmod source directory inside the running container, making it available to the build environment.

Run the following command, substituting the path to your source for #SRC_DIR#

    docker run -v #SRC_DIR#:/darkmod -w /darkmod --rm darkmod-build:latest ./linuxBuild.sh

For example:

    docker run -v /home/timw/projects/darkmod/src/trunk:/darkmod -w /darkmod --rm darkmod-build:latest ./linuxBuild.sh

Clean:

    docker run -v #SRC_DIR#:/darkmod -w /darkmod darkmod-build:latest scons -c

### Or use the Makefile

First modify the paths in the Makefile as above, and then you can use the pre-defined targets:

Make the build image:

    make

Build darkmod:

    make darkmod

Clean:

    make clean

