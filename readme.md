# Hello world with Docker and Go

## Run Locally
```
go build -o server .
go run hw.go

```

### Build, Push DockerHub
```
docker build -t gohw .
docker login
docker tag gohw jhow33/gohw
docker push jhow33/gohw

```

### Run Image
```
docker run jhow33/gohw
```