.PHONY: build run

build:
	docker build -t agetty:latest .

run:
	docker run --rm --name agetty --hostname lpbk -dt --device=/dev/ttyUSB0 agetty:latest
	#docker run --name agetty -dt --device=/dev/ttyUSB0 agetty:latest

stop:
	docker stop agetty

shell:
	docker run --rm -it --device=/dev/ttyUSB0 --entrypoint=sh agetty:latest
