IMAGE := elixir-sandbox

docker-build: Dockerfile
	docker build -t ${IMAGE} .

shell: docker-build
	docker run -it --rm ${IMAGE} /bin/bash
