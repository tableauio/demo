# demo

Tableau demo for illustrating different use cases.

## Requirements

### Install Protobuf

> You can just install `protoc` and the offical proto files.

Install protoc: [Protocol Buffers](https://github.com/protocolbuffers/protobuf/releases/latest)

### Install protoc-gen-go

Refer: [protoc-gen-go](https://github.com/protocolbuffers/protobuf-go)
```
go install google.golang.org/protobuf/cmd/protoc-gen-go
```
## Run

- `cd cmd/test`
- `bash scripts/gen.sh`
- `go build`
- `./test`
