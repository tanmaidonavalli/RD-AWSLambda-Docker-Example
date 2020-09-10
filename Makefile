build: 
	docker build -t tfimage:latest .
pack: 
	#docker run --rm -v $(shell pwd):/project/ -it tfimage:latest sh package.sh
	docker run -it -d --name tfcontainer1 tfimage:latest
	
docker exec -it tfcontainer1 bash -c 'cd /root/AMIcode/TF &&
