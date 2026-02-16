# Game Server Proto

Shared Protocol Buffer definitions for the Game Server project.

## Usage

Import as a Go module:

```go
import pb "github.com/nstut/game-server-proto/gen"
```

## Development

### Prerequisites

- Go 1.21+
- protoc 25.x
- protoc-gen-go
- protoc-gen-go-grpc

### Generate Go Code

```bash
# Install protoc plugins
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

# Generate
./scripts/generate.sh
```

### Versioning

Proto changes are automatically versioned via GitHub Actions. Each change to the `proto/` directory triggers:

1. Go code generation
2. Automatic commit of generated code
3. Git tag creation

## Projects Using This

- [Game-Server-Controller-BE](https://github.com/nstut/Game-Server-Controller-BE) - Backend controller
- [Game-Server-Node](https://github.com/nstut/Game-Server-Node) - Node agent
