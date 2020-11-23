image:
	docker build -t guye1296/alpine-builder .
clean:
	docker image rm guye1296/alpine-builder
