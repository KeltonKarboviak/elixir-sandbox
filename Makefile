IMAGE := elixir-sandbox

docker-build: Dockerfile
	docker build -t ${IMAGE} .

shell: docker-build
	docker run -it --rm -v ${PWD}:/app --name elixir-shell ${IMAGE} /bin/bash
