#!/bin/sh

readonly go_gen_path="../server/gen/proto/"
readonly curr_dir=$(pwd)
readonly dart_gen_path="${curr_dir}/../client/packages/queries_repository/lib/src/gen/proto/"
readonly proto_file_path="${curr_dir}/queries.proto"

go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

export PATH="$PATH:$(go env GOPATH)/bin"

protoc --go_out=$go_gen_path --go_opt=paths=source_relative \
    --go-grpc_out=$go_gen_path --go-grpc_opt=paths=source_relative \
    queries.proto

dart pub global activate protoc_plugin

export PATH="$PATH:$HOME/.pub-cache/bin"

protoc --proto_path=$(pwd) --dart_out=grpc:$dart_gen_path $proto_file_path
