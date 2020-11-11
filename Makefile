VERSION = "2020-11-10-1910"
IMAGE = "docker.pkg.github.com/marketcircle/parsedmarc/parsedmarc:${VERSION}"
build:
	docker build -t ${IMAGE} .

push: VERSION = $(shell version-tool show)
push:build
	docker push ${IMAGE}

stamp:
	version-tool stamp

release:stamp push 
