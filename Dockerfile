FROM ghcr.io/zephyrproject-rtos/ci:main@sha256:4e337e98b2d894cd73d62d030e35ae957bf0259dbc430439dd4380002f0493cc

# Cache Zephyr repositories
RUN mkdir -p /repo-cache/zephyrproject && \
	cd /repo-cache/zephyrproject && \
	git clone https://github.com/zephyrproject-rtos/zephyr.git && \
	west init -l zephyr && \
	west update
