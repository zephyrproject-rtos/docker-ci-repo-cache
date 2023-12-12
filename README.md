# docker-ci-repo-cache

This repository contains the Dockerfile for building a Docker image based on the
CI image (`ghcr.io/zephyrproject-rtos/ci`) with the Zephyr main and module
repositories pre-downloaded.

It is intended to be used in the CI workflows to reduce the time and network
traffic to download the entire Zephyr repository every time a CI job runs.
