FROM ghcr.io/zephyrproject-rtos/ci:v0.26.13

# Cache Zephyr repositories
RUN mkdir -p /repo-cache/zephyrproject && \
	cd /repo-cache/zephyrproject && \
	git clone https://github.com/zephyrproject-rtos/zephyr.git && \
	west init -l zephyr && \
	west update
