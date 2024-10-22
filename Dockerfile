FROM ghcr.io/zephyrproject-rtos/ci:v0.27.3

# Cache Zephyr repositories
RUN mkdir -p /repo-cache/zephyrproject && \
	cd /repo-cache/zephyrproject && \
	git clone https://github.com/zephyrproject-rtos/zephyr.git && \
	west init -l zephyr && \
	west update
