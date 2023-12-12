ARG BASE_IMAGE
FROM ${BASE_IMAGE:-zephyrprojectrtos/ci:latest}

# Cache Zephyr repositories
RUN mkdir -p /repo-cache/zephyrproject && \
	cd /repo-cache/zephyrproject && \
	git clone https://github.com/zephyrproject-rtos/zephyr.git && \
	west init -l zephyr && \
	west update
