FROM golang:1.23.3

WORKDIR /app

COPY api_go/ ./
RUN go mod tidy 

COPY api_go/ .

RUN go build -o main ./cmd

EXPOSE 8080

CMD ["./main"]
