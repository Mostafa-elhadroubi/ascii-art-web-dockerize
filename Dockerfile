FROM golang:1.22

WORKDIR /app
COPY go.mod .
COPY main.go .
COPY functions/ functions/
COPY banners/ banners/
COPY home.html .

RUN go build -o bin .

ENTRYPOINT [ "/app/bin" ]
LABEL maintainer="your-email@example.com"
LABEL version="1.0"
LABEL description="A Go web server for ASCII art"
