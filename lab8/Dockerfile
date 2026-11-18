FROM debian:13-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends build-essential

WORKDIR /podman_lab8

COPY ./lab3 /podman_lab8

RUN make && make tests

CMD ["./test_runner"]
