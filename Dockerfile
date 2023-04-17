FROM golang:1.19

COPY *.go ./

CMD [ "go", "run", "desafio01.go" ]
