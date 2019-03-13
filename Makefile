build: 
	docker build -t example:latest .
pack: 
	docker run --rm -v $(shell pwd):/project/ -it example:latest sh package.sh
