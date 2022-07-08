FROM golang:1.18.3-alpine3.16 as develop

WORKDIR /usr/src/app

COPY ./challenge.go .
RUN go build challenge.go


FROM scratch

COPY --from=develop /usr/src/app  .

CMD ["./challenge"]
