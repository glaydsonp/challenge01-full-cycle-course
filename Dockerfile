FROM golang as build

WORKDIR /app

COPY . .

RUN go env -w GO111MODULE=off

RUN go build -o /desafio01

FROM scratch

WORKDIR /app

COPY --from=build ./desafio01 ./desafio01

CMD [ "/app/desafio01" ]