FROM golang:1.18.3-alpine3.16 as develop

WORKDIR /usr/src/app

COPY . .
RUN go build hello-world.go


FROM scratch

COPY --from=develop /usr/src/app  .

CMD ["./hello-world"]
