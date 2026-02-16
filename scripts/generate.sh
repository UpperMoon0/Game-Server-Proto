#!/bin/bash

# Generate Go code from proto files

set -e

# Create output directory
mkdir -p gen

# Generate common.proto first
protoc --go_out=gen --go_opt=paths=source_relative \
       -I. proto/common.proto

# Generate controller.proto (depends on common.proto)
protoc --go_out=gen --go_opt=paths=source_relative \
       --go-grpc_out=gen --go-grpc_opt=paths=source_relative \
       -I. proto/controller.proto

echo "Generated files:"
ls -la gen/
