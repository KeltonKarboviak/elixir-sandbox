IMAGE := elixir-sandbox

docker-build: Dockerfile
	docker build -t ${IMAGE} .

shell: docker-build
	docker run -it --rm --name elixir-shell ${IMAGE} /bin/bash
